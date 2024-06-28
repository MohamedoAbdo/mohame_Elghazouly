import 'package:flutter/material.dart';
import 'package:tourism_app/features/home/presentation/drawer.dart';
import 'package:tourism_app/features/home/presentation/home_view.dart';
import 'package:tourism_app/generated/l10n.dart';

class aboutus extends StatelessWidget {
  const aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize32 = (screenWidth <= 600) ? 32 : 42;
    double fontSize24 = (screenWidth <= 600) ? 24 : 32;
    double fontSize16 = (screenWidth <= 600) ? 16 : 24;
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
                                "     ",
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xFF6C3428),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      S.of(context).About_Us,
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
                height: MediaQuery.of(context).size.height * 0.02,
              ),

              //

              //
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, right: 16, left: 16, bottom: 16),
                child: Container(
                  child: Text(
                    S.of(context).The_Kemet,
                    style: TextStyle(
                      color: Color(0xFFBE8C63),
                      fontSize: fontSize16,
                      fontFamily: 'inter',
                      fontWeight: FontWeight.w500,
                      height: MediaQuery.of(context).size.height * .002,
                    ),
                  ),
                ),
              ),

              //

              Padding(
                padding: const EdgeInsets.only(
                    top: 16, right: 16, left: 16, bottom: 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Text(
                    S.of(context).QR,
                    style: TextStyle(
                      color: Color(0xFF6C3428),
                      fontSize: 20,
                      fontFamily: 'inter',
                      fontWeight: FontWeight.w500,
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
                    S.of(context).TQR,
                    style: TextStyle(
                      color: Color(0xFFBE8C63),
                      fontSize: fontSize16,
                      fontFamily: 'inter',
                      fontWeight: FontWeight.w500,
                      height: MediaQuery.of(context).size.height * .002,
                    ),
                  ),
                ),
              ),
              //

              Padding(
                padding: const EdgeInsets.only(
                    top: 16, right: 16, left: 16, bottom: 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Text(
                    S.of(context).Ease,
                    style: TextStyle(
                      color: Color(0xFF6C3428),
                      fontSize: 20,
                      fontFamily: 'inter',
                      fontWeight: FontWeight.w500,
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
                    S.of(context).Among,
                    style: TextStyle(
                      color: Color(0xFFBE8C63),
                      fontSize: fontSize16,
                      fontFamily: 'inter',
                      fontWeight: FontWeight.w500,
                      height: MediaQuery.of(context).size.height * .002,
                    ),
                  ),
                ),
              ),
              //

              //
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, right: 16, left: 16, bottom: 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Text(
                    S.of(context).Artificial,
                    style: TextStyle(
                      color: Color(0xFF6C3428),
                      fontSize: 20,
                      fontFamily: 'inter',
                      fontWeight: FontWeight.w500,
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
                    S.of(context).Another,
                    style: TextStyle(
                      color: Color(0xFFBE8C63),
                      fontSize: fontSize16,
                      fontFamily: 'inter',
                      fontWeight: FontWeight.w500,
                      height: MediaQuery.of(context).size.height * .002,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
