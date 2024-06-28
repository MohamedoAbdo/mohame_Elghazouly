import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tourism_app/features/svscreen/Coastaltourism.dart';
import 'package:tourism_app/features/svscreen/Restaurants.dart';
import 'package:tourism_app/features/svscreen/profile.dart';
import 'package:tourism_app/features/svscreen/search.dart';
import 'package:tourism_app/generated/l10n.dart';

class streo extends StatefulWidget {
  const streo({super.key});

  @override
  State<streo> createState() => _streoState();
}

class _streoState extends State<streo> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize32 = (screenWidth <= 600) ? 32 : 42;
    double fontSize24 = (screenWidth <= 600) ? 24 : 32;
    double fontSize16 = (screenWidth <= 600) ? 16 : 24;
    return Scaffold(
      body: Container(
        key: _formKey,
        decoration: const BoxDecoration(color: Colors.black),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Stack(children: [
                      Image.asset(
                        'assets/image/photo_7_2024-04-20_15-55-17.jpg',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => Restaurants()),
                            // );
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
                              children: [
                                Text("  Streo",
                                    style: TextStyle(
                                      color: const Color(0xFF6C3428),
                                      fontSize: fontSize24,
                                      fontWeight: FontWeight.w500,
                                    )),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * .8,
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.favorite,
                                        color: Color(0xFF6C3428),
                                      ),
                                      Text(
                                        "   ",
                                        textAlign: TextAlign.left,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),

                        SizedBox(
                          height: MediaQuery.of(context).size.height * .015,
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const streo()),
                                    );
                                  },
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Stack(children: [
                                          Image.asset(
                                            'assets/image/photo_34.jpg',
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .45,
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
                              ],
                            ),
                            const Row(
                              children: [
                                Text(
                                  "   ",
                                )
                              ],
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const streo()),
                                    );
                                  },
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Stack(children: [
                                          Image.asset(
                                            'assets/image/photo_20.jpg',
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .45,
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
                              ],
                            ),
                          ],
                        ),

                        //

                        SizedBox(
                            height: MediaQuery.of(context).size.height * .02),

                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          child: Text(
                            S.of(context).Description,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: const Color(0xFF6C3428),
                              fontSize: fontSize16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 16, right: 16, left: 16, bottom: 16),
                            child: Container(
                              height: MediaQuery.of(context).size.height * .3,
                              width: MediaQuery.of(context).size.width * .9,
                              color: Colors.white,
                              child: Center(
                                child: Text(
                                  S.of(context).streo_text,
                                  style: TextStyle(
                                    color: const Color(0xFFBE8C63),
                                    fontSize: fontSize16,
                                    fontWeight: FontWeight.w500,
                                  ),
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
                          width: MediaQuery.of(context).size.height * .396,
                          child: Row(
                            children: [
                              const Icon(
                                Icons.mail,
                                color: Color(0xFF6C3428),
                                size: 20,
                              ),
                              Row(
                                children: [
                                  Text("     Streo.restaurant.com    ",
                                      style: TextStyle(
                                        color: const Color(0xFF6C3428),
                                        fontSize: fontSize16,
                                        fontWeight: FontWeight.w500,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .0015,
                                      ))
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.height * .025,
                        ),
                        //

                        SizedBox(
                          width: MediaQuery.of(context).size.height * .396,
                          child: Row(
                            children: [
                              const Icon(
                                Icons.call,
                                color: Color(0xFF6C3428),
                                size: 20,
                              ),
                              Row(
                                children: [
                                  Text("     01092065207   ",
                                      style: TextStyle(
                                        color: const Color(0xFF6C3428),
                                        fontSize: fontSize16,
                                        fontWeight: FontWeight.w500,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .0015,
                                      ))
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.height * .025,
                        ),
                        //

                        SizedBox(
                          width: MediaQuery.of(context).size.height * .396,
                          child: Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                color: Color(0xFF6C3428),
                                size: 20,
                              ),
                              Row(
                                children: [
                                  Text("     Location    ",
                                      style: TextStyle(
                                        color: const Color(0xFF6C3428),
                                        fontSize: fontSize16,
                                        fontWeight: FontWeight.w500,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .0015,
                                      ))
                                ],
                              ),
                            ],
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
