import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tourism_app/features/svscreen/TourismType.dart';
import 'package:tourism_app/generated/l10n.dart';

class Coastaltourism extends StatefulWidget {
  const Coastaltourism({super.key});

  @override
  State<Coastaltourism> createState() => _CoastaltourismState();
}

class _CoastaltourismState extends State<Coastaltourism> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Stack(children: [
                      Container(
                        height: MediaQuery.of(context).size.height * .3,
                        child: Image.asset(
                          'assets/image/photo_33.jpg',
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * .245,
                        child: Container(
                          height: MediaQuery.of(context).size.height * .050,
                          width: MediaQuery.of(context).size.width * 1.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF6C3428).withOpacity(1.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.250,
                            right: 16,
                            left: 16,
                            bottom: 16),
                        child: Container(
                          child: Column(
                            children: [
                              Text(
                                S.of(context).Coastal_Tourism,
                                style: TextStyle(
                                  color: Color(0xFFE4D1B9),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.05),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TourismType()),
                            );
                          },
                          child: Row(
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

              Padding(
                padding: const EdgeInsets.only(
                    top: 16, right: 16, left: 16, bottom: 16),
                child: Container(
                  height: MediaQuery.of(context).size.height * .3,
                  width: MediaQuery.of(context).size.width * 1.0,
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      S.of(context).Coastal_text,
                      style: TextStyle(
                        color: Color(0xFFBE8C63),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      S.of(context).some_pics,
                      style: TextStyle(
                        color: Color(0xFF6C3428),
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            "   ",
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Coastaltourism()),
                          );
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Stack(children: [
                                Image.asset(
                                  'assets/image/Group 115940.png',
                                  height:
                                      MediaQuery.of(context).size.height * .25,
                                  width:
                                      MediaQuery.of(context).size.width * .45,
                                ),
                                //
                                Positioned(
                                  top:
                                      MediaQuery.of(context).size.height * .185,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        .04,
                                    width:
                                        MediaQuery.of(context).size.width * .45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xFF6C3428).withOpacity(1.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          0.195,
                                      right: 16,
                                      left: 16,
                                      bottom: 16),
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              S.of(context).Blue_Lagoon,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFFE4D1B9),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                //
                              ])
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "      ",
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
                                builder: (context) => Coastaltourism()),
                          );
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Stack(children: [
                                Image.asset(
                                  'assets/image/Group 115950.png',
                                  height:
                                      MediaQuery.of(context).size.height * .25,
                                  width:
                                      MediaQuery.of(context).size.width * .45,
                                ),
                                Positioned(
                                  top:
                                      MediaQuery.of(context).size.height * .185,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        .04,
                                    width:
                                        MediaQuery.of(context).size.width * .45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xFF6C3428).withOpacity(1.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          0.195,
                                      right: 16,
                                      left: 16,
                                      bottom: 16),
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              S.of(context).Ford_Bay,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFFE4D1B9),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
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
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              //

              Row(
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            "   ",
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Coastaltourism()),
                          );
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Stack(children: [
                                Image.asset(
                                  'assets/image/Group 115960.png',
                                  height:
                                      MediaQuery.of(context).size.height * .25,
                                  width:
                                      MediaQuery.of(context).size.width * .45,
                                ),
                                Positioned(
                                  top:
                                      MediaQuery.of(context).size.height * .185,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        .04,
                                    width:
                                        MediaQuery.of(context).size.width * .45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xFF6C3428).withOpacity(1.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          0.195,
                                      right: 16,
                                      left: 16,
                                      bottom: 16),
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              S.of(context).nuweiba,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFFE4D1B9),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ])
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "      ",
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
                                builder: (context) => Coastaltourism()),
                          );
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Stack(children: [
                                Image.asset(
                                  'assets/image/Group 115970.png',
                                  height:
                                      MediaQuery.of(context).size.height * .25,
                                  width:
                                      MediaQuery.of(context).size.width * .45,
                                ),
                                Positioned(
                                  top:
                                      MediaQuery.of(context).size.height * .185,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        .04,
                                    width:
                                        MediaQuery.of(context).size.width * .45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xFF6C3428).withOpacity(1.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          0.195,
                                      right: 16,
                                      left: 16,
                                      bottom: 16),
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              S.of(context).Marsa_Alam,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFFE4D1B9),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
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
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
