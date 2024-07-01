import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tourism_app/Helper/api.dart';
import 'package:tourism_app/Helper/app_helper.dart';
import 'package:tourism_app/features/controllers/favourit_controller.dart';
import 'package:tourism_app/features/controllers/place_details_controller.dart';
import 'package:tourism_app/features/home/presentation/home_view.dart';
import 'package:tourism_app/features/svscreen/PharaonicVillage.dart';
import 'package:tourism_app/models/home_places_model.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PlaceDetailsScreen extends StatefulWidget {
  const PlaceDetailsScreen({super.key, required this.id});
  final int id;
  @override
  State<PlaceDetailsScreen> createState() => _PlaceDetailsScreenState();
}

class _PlaceDetailsScreenState extends State<PlaceDetailsScreen> {
  late Future<Place> place;
  late Future<PlacesModel> popularPlace;
  final PlaceDetailsController placeDetailsController =
      PlaceDetailsController();

  final FavouritController favouritController = FavouritController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    place = placeDetailsController.getPlace(widget.id);
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize32 = (screenWidth <= 600) ? 32 : 42;
    double fontSize24 = (screenWidth <= 600) ? 24 : 32;
    double fontSize16 = (screenWidth <= 600) ? 16 : 24;
    return Scaffold(
      body: Container(
        // decoration: const BoxDecoration(color: Colors.black),
        key: _formKey,
        child: FutureBuilder(
            future: place,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (snapshot.hasError) {
                return const Center(
                  child: Text("Error"),
                );
              }

              if (snapshot.hasData) {
                final placeData = snapshot.data as Place;
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Stack(children: [
                              Container(
                                child: Image.network(
                                  "$base/images/${placeData.image}",
                                  fit: BoxFit.cover,
                                  width: MediaQuery.of(context).size.width,
                                  height: 300,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.05),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Row(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "     ",
                                          )
                                        ],
                                      ),
                                      Icon(
                                        Icons.arrow_back_ios,
                                        color: Color(0xFF6C3428),
                                        size: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: MediaQuery.of(context).size.width * 0.01,
                                top: 50,
                                child: InkWell(
                                  onTap: () async {
                                    log("asdsd");
                                    AppHelper.isINFavourit(placeData)
                                        ? await favouritController
                                            .removeFromFavourit(
                                                model: placeData)
                                        : await favouritController
                                            .addToFavourit(model: placeData);
                                    setState(() {});
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      AppHelper.isINFavourit(placeData)
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ])
                          ],
                        ),
                      ),
                      //

                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              width: MediaQuery.of(context).size.width * 1.0,
                              color: const Color(0xFF6C3428),
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      '${placeData.name}',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: fontSize24,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  IconButton(
                                      onPressed: () {
                                        launchUrlString(
                                            'https://maps.app.goo.gl/xcYRQyBKhvGpXNDVA');
                                      },
                                      icon: const Icon(Icons.location_on),
                                      color: const Color(0xffbe8c63)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .01,
                            ),
                            // SizedBox(
                            //   width: MediaQuery.of(context).size.width * 1.0,
                            //   child: Text(
                            //     '   ${country.name}    ',
                            //     textAlign: TextAlign.left,
                            //     style: TextStyle(
                            //       color: const Color(0xFF6C3428),
                            //       fontSize: fontSize24,
                            //       fontWeight: FontWeight.w500,
                            //     ),
                            //   ),
                            // ),

                            Container(
                              width: MediaQuery.of(context).size.width * 1.0,
                              color: Colors.white,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 16, right: 16, left: 16, bottom: 16),
                                  child: Text(
                                    '${placeData.description}',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: const Color(0xFFBE8C63),
                                      fontSize: fontSize16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .02,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .045,
                              width: MediaQuery.of(context).size.width * 1.0,
                              child: Text(
                                '   Some pics&video:     ',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: const Color(0xFF6C3428),
                                  fontSize: fontSize24,
                                  fontWeight: FontWeight.w500,
                                  height: MediaQuery.of(context).size.height *
                                      .0015,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .02,
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          "  ",
                                        )
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                          child: Column(children: [
                                        Stack(children: [
                                          Image.asset(
                                            'assets/image/Rectangle 336.png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .25,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .45,
                                          ),
                                        ])
                                      ])),
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "       ",
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                          child: Column(children: [
                                        Stack(children: [
                                          Image.asset(
                                            'assets/image/Rectangle 336 (1).png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .25,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .45,
                                          ),
                                        ])
                                      ])),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .02,
                            ),
                            //

                            Row(
                              children: [
                                Row(
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          "  ",
                                        )
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                          child: Column(children: [
                                        Stack(children: [
                                          Image.asset(
                                            'assets/image/Rectangle 336 (2).png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .25,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .45,
                                          ),
                                        ])
                                      ])),
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "       ",
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        child: Column(
                                          children: [
                                            Stack(children: [
                                              Image.asset(
                                                'assets/image/Rectangle 336 (3).png',
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .25,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .45,
                                              ),
                                            ])
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }
              return const SizedBox();
            }),
      ),
    );
  }
}
