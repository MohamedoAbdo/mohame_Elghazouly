import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tourism_app/features/home/presentation/home_view.dart';
import 'package:tourism_app/features/svscreen/Archaeological%20tourism.dart';
import 'package:tourism_app/features/svscreen/Coastaltourism.dart';
import 'package:tourism_app/features/svscreen/Medical%20tourism.dart';
import 'package:tourism_app/features/svscreen/Religious%20tourism.dart';
import 'package:tourism_app/generated/l10n.dart';

class TourismType extends StatefulWidget {
  const TourismType({super.key});

  @override
  State<TourismType> createState() => _TourismTypeState();
}

class _TourismTypeState extends State<TourismType> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize32 = (screenWidth <= 600) ? 32 : 42;
    double fontSize24 = (screenWidth <= 600) ? 24 : 28;
    double fontSize16 = (screenWidth <= 600) ? 16 : 22;
    return Scaffold(
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Home_Screen()),
                        );
                      },
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                "   ",
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xFF6C3428),
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      S.of(context).tourism_type,
                      style: TextStyle(
                        color: Color(0xff6C3428),
                        fontSize: fontSize24,
                        fontFamily: 'intr',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              //1

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Coastaltourism()),
                  );
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset("assets/image/Rectangle 3351.png"),
                      ),

                      //
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 0, right: 16, left: 16, bottom: 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1,
                          child: Text(
                            S.of(context).Coastal_Tourism,
                            style: TextStyle(
                              color: Color(0xFF6C3428),
                              fontSize: fontSize24,
                              fontFamily: 'inter',
                              fontWeight: FontWeight.w600,
                              height: MediaQuery.of(context).size.height * .002,
                            ),
                          ),
                        ),
                      ),

                      //
                      //
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16, right: 16, left: 16, bottom: 16),
                        child: Container(
                          child: Text(
                            S.of(context).ct_text,
                            style: TextStyle(
                              color: Color(0xFFBE8C63),
                              fontSize: fontSize16,
                              fontFamily: 'inter',
                              fontWeight: FontWeight.w600,
                              height: MediaQuery.of(context).size.height * .002,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width * .955,
                  height: MediaQuery.of(context).size.height * .58,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: MediaQuery.of(context).size.width * .002,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFE4D1B9),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              //
              //2
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Religioustourism()),
                  );
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset("assets/image/Rectangle 3350.png"),

                        //_LoginscreenState
                      ),

                      //
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 0, right: 16, left: 16, bottom: 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1,
                          child: Text(
                            S.of(context).Religious_tourism,
                            style: TextStyle(
                              color: Color(0xFF6C3428),
                              fontSize: fontSize24,
                              fontFamily: 'inter',
                              fontWeight: FontWeight.w600,
                              height: MediaQuery.of(context).size.height * .002,
                            ),
                          ),
                        ),
                      ),

                      //

                      //
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16, right: 16, left: 16, bottom: 16),
                        child: Container(
                          child: Text(
                            S.of(context).rt_text,
                            style: TextStyle(
                              color: Color(0xFFBE8C63),
                              fontSize: fontSize16,
                              fontFamily: 'inter',
                              fontWeight: FontWeight.w600,
                              height: MediaQuery.of(context).size.height * .002,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width * .955,
                  height: MediaQuery.of(context).size.height * .58,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: MediaQuery.of(context).size.width * .002,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFE4D1B9),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),

              //3
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Medicaltourism()),
                  );
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset("assets/image/Rectangle 337.png"),

                        //_LoginscreenState
                      ),

                      //
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 0, right: 16, left: 16, bottom: 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1,
                          child: Text(
                            S.of(context).Medical_tourism,
                            style: TextStyle(
                              color: Color(0xFF6C3428),
                              fontSize: fontSize24,
                              fontFamily: 'inter',
                              fontWeight: FontWeight.w600,
                              height: MediaQuery.of(context).size.height * .002,
                            ),
                          ),
                        ),
                      ),

                      //

                      //
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16, right: 16, left: 16, bottom: 16),
                        child: Container(
                          child: Text(
                            S.of(context).mt_text,
                            style: TextStyle(
                              color: Color(0xFFBE8C63),
                              fontSize: fontSize16,
                              fontFamily: 'inter',
                              fontWeight: FontWeight.w600,
                              height: MediaQuery.of(context).size.height * .002,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width * .955,
                  height: MediaQuery.of(context).size.height * .58,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: MediaQuery.of(context).size.width * .002,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFE4D1B9),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              //4
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Archaeological()),
                  );
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.95,

                        child: Image.asset("assets/image/Rectangle 338.png"),

                        //_LoginscreenState
                      ),

                      //
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 0, right: 16, left: 16, bottom: 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1,
                          child: Text(
                            S.of(context).Archaeological_tourism,
                            style: TextStyle(
                              color: Color(0xFF6C3428),
                              fontSize: fontSize24,
                              fontFamily: 'inter',
                              fontWeight: FontWeight.w600,
                              height: MediaQuery.of(context).size.height * .002,
                            ),
                          ),
                        ),
                      ),
                      //

                      //
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16, right: 16, left: 16, bottom: 16),
                        child: Container(
                          child: Text(
                            S.of(context).at_text,
                            style: TextStyle(
                              color: Color(0xFFBE8C63),
                              fontSize: fontSize16,
                              fontFamily: 'inter',
                              fontWeight: FontWeight.w600,
                              height: MediaQuery.of(context).size.height * .002,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width * .955,
                  height: MediaQuery.of(context).size.height * .58,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: MediaQuery.of(context).size.width * .002,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFE4D1B9),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              //
              SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * .03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
