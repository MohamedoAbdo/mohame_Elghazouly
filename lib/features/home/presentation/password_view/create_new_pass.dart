import 'package:flutter/material.dart';
import 'package:tourism_app/features/svscreen/login.dart';

class CreatNEWPass extends StatelessWidget {
  const CreatNEWPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.10,
          ),
          Center(
            child: Text('Create New Password',
                style: TextStyle(
                  color: Color(0xff6C3428),
                  fontSize: 32,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.08,
            child: Column(
              children: [
                Text(
                  ' Your New Password Must Be Different ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFBE8C63),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(
                  'From Previous Used Passwords. ',
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              onChanged: (value) => print(value),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  size: 18,
                  color: Color(0xffBE8C63),
                ),
                hintText: 'Password',
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
            height: MediaQuery.of(context).size.height * 0.01,
          ),

          //Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              onChanged: (value) => print(value),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  size: 18,
                  color: Color(0xffBE8C63),
                ),
                hintText: 'Confirm Password',
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
            height: 60,
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
              minWidth: 250,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => signin()));
              },
              child: Text(
                'Reset Password',
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
    ));
  }
}
