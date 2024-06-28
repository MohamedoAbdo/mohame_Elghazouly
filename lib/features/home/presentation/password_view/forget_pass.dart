import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/features/svscreen/verification.dart';

class ForgetPass extends StatelessWidget {
  TextEditingController emailcontroller = TextEditingController();

  ForgetPass({super.key});

  final forKey = GlobalKey<FormState>();
  String? email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.10,
          ),
          Center(
            child: Text('Forget Password',
                // S.of(context).Forget_Password,
                style: TextStyle(
                  color: Color(0xff6C3428),
                  fontSize: 32,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.09,
            child: Column(
              children: [
                Text(
                  'Enter Your Email To Send You A Message To Reset ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFBE8C63),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Your New Password. ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFBE8C63),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          //Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: emailcontroller,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || !value.contains('@')) {
                  return 'Enter valid Email';
                }
              },
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xffBE8C63),
                ),
                hintText: 'E-Mail',
                hintStyle: TextStyle(
                  color: Color(0xFFBE8C63),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.05),
            child: MaterialButton(
              color: Color(0xffBE8C63),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              height: 51,
              minWidth: 210,
              onPressed: () async {
                if (emailcontroller.text == "") {
                  AwesomeDialog(
                          context: context,
                          dialogType: DialogType.error,
                          title: "Error",
                          desc:
                              "Please write your email and then click forget password")
                      .show();
                  return;
                }
                try {
                  await FirebaseAuth.instance
                      .sendPasswordResetEmail(email: emailcontroller.text);
                  AwesomeDialog(
                          context: context,
                          dialogType: DialogType.success,
                          title: "success",
                          desc:
                              "A link to reset your password has been sent to your email")
                      .show();
                } catch (e) {
                  AwesomeDialog(
                          context: context,
                          dialogType: DialogType.error,
                          title: "Error",
                          desc:
                              "Please make sure that the email you entered is correct")
                      .show();
                }
              },
              child: Text(
                'Send Mail',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
