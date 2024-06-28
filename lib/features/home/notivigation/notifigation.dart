import 'package:flutter/material.dart';
import 'package:tourism_app/generated/l10n.dart';

class Notifica extends StatelessWidget {
  Notifica({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 50,
              left: 12,
              bottom: 20,
            ),
            child: Row(
              children: [
                InkWell(
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: 24,
                    color: const Color(0xff6C3428),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                Text(
                  S.of(context).notification,
                  style: TextStyle(
                    color: Color(0xff6C3428),
                    fontSize: 24,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.93,
                        height: MediaQuery.of(context).size.height * 0.155,
                        padding: EdgeInsets.all(16),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xffE4D1B9),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              S.of(context).not_text1,
                              style: TextStyle(
                                color: Color(0xFFBE8C63),
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      height: 20,
                    ),
                itemCount: 1),
          )
        ],
      ),
    );
  }
}
