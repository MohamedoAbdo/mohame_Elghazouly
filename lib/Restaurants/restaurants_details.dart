import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tourism_app/Helper/app_helper.dart';
import 'package:tourism_app/features/controllers/favourit_controller.dart';
import 'package:tourism_app/features/svscreen/Coastaltourism.dart';
import 'package:tourism_app/features/svscreen/Restaurants.dart';
import 'package:tourism_app/features/svscreen/profile.dart';
import 'package:tourism_app/features/svscreen/search.dart';
import 'package:tourism_app/generated/l10n.dart';
import 'package:tourism_app/models/Resturant_model.dart';

class RestaurantsDetails extends StatefulWidget {
  const RestaurantsDetails({super.key, required this.model});
  final RestaurantModel model;
  @override
  State<RestaurantsDetails> createState() => _RestaurantsDetailsState();
}

class _RestaurantsDetailsState extends State<RestaurantsDetails> {
  final _formKey = GlobalKey<FormState>();

  String description(BuildContext context, String value) {
    if (value == "bazooka") {
      return S.of(context).Bazooka;
    }
    if (value == "blabn") {
      return S.of(context).B_labn;
    }
    if (value == "carrefour") {
      return S.of(context).Carrefour;
    }

    return value;
  }

  FavouritController favouritController = FavouritController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize32 = (screenWidth <= 600) ? 32 : 42;
    double fontSize24 = (screenWidth <= 600) ? 24 : 32;
    double fontSize16 = (screenWidth <= 600) ? 16 : 24;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.black),
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Stack(children: [
                      Image.asset(
                        widget.model.image ?? "",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
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
                    ])
                  ],
                ),
              ),
              //

              //
              Container(
                width: MediaQuery.of(context).size.height * 1.0,
                height: MediaQuery.of(context).size.height * 1.2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .030,
                        ),
                        //
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 1.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("  ${widget.model.name}",
                                    style: TextStyle(
                                      color: const Color(0xFF6C3428),
                                      fontSize: fontSize24,
                                      fontWeight: FontWeight.w500,
                                    )),
                                // InkWell(
                                //   onTap: () async {
                                //     log("asdsd");
                                //     AppHelper.isINFavourit(widget.model)
                                //         ? await favouritController
                                //             .removeFromFavourit(
                                //                 model: widget.model)
                                //         : await favouritController
                                //             .addToFavourit(model: widget.model);
                                //     setState(() {});
                                //   },
                                //   child: Padding(
                                //     padding: const EdgeInsets.all(8.0),
                                //     child: Icon(
                                //       AppHelper.isINFavourit(widget.model)
                                //           ? Icons.favorite
                                //           : Icons.favorite_border,
                                //       color: const Color(0xFF6C3428),
                                //     ),
                                //   ),
                                // ),
                              ],
                            )),

                        SizedBox(
                          height: MediaQuery.of(context).size.height * .015,
                        ),
                        SingleChildScrollView(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * .32,
                            child: Row(
                              children: [
                                for (var i = 0;
                                    i < widget.model.album!.length;
                                    i++)
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //       builder: (context) =>
                                        //           const RestaurantsDetails()),
                                        // );
                                      },
                                      child: Container(
                                        child: Column(
                                          children: [
                                            Stack(children: [
                                              Image.asset(
                                                widget.model.album?[i] ?? "",
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .35,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .3,
                                              ),
                                            ])
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),

                        //

                        SizedBox(
                            height: MediaQuery.of(context).size.height * .02),

                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          child: Text(
                            S.of(context).Description,
                            style: TextStyle(
                              color: const Color(0xFF6C3428),
                              fontSize: fontSize16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(
                              top: 16, right: 16, left: 16, bottom: 16),
                          child: Container(
                            height: MediaQuery.of(context).size.height * .4,
                            width: MediaQuery.of(context).size.width * .9,
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                description(
                                    context, widget.model.description ?? ""),
                                style: TextStyle(
                                  color: const Color(0xFFBE8C63),
                                  fontSize: fontSize16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),

                        //
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .04),
                        //
                        Image.asset(
                          'assets/image/Line 12.png',
                          width: MediaQuery.of(context).size.width * 0.9,
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .04),

                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16, left: 16),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.mail,
                                  color: Color(0xFF6C3428),
                                  size: 20,
                                ),
                                Row(
                                  children: [
                                    Text("     ${widget.model.website ?? ""}",
                                        style: TextStyle(
                                          color: const Color(0xFF6C3428),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .0015,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.height * .025,
                        ),
                        //

                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16, left: 16),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.call,
                                  color: Color(0xFF6C3428),
                                  size: 20,
                                ),
                                Row(
                                  children: [
                                    Text("     ${widget.model.phone ?? ""} ",
                                        style: TextStyle(
                                          color: const Color(0xFF6C3428),
                                          fontSize: fontSize16,
                                          fontWeight: FontWeight.w500,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .0015,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.height * .01,
                        ),
                        //

                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16, left: 16),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  color: Color(0xFF6C3428),
                                  size: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child:
                                      Text("     ${widget.model.address ?? ""}",
                                          style: TextStyle(
                                            color: const Color(0xFF6C3428),
                                            fontSize: fontSize16,
                                            fontWeight: FontWeight.w500,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .0015,
                                          )),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: MediaQuery.of(context).size.height * .025,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
