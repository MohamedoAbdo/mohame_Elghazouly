import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourism_app/features/home/presentation/password_view/create_new_pass.dart';
import 'package:tourism_app/features/svscreen/controllers.dart';
import 'package:tourism_app/features/svscreen/login.dart';

class verification extends StatefulWidget {
  const verification({super.key});

  @override
  State<verification> createState() => _verificationState();
}

class _verificationState extends State<verification> {
  void initState() {
    print("initState");

    startTime();
    super.initState();
  }

  int counter = 5;
  late Timer _timer;
  void startTime() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        print(timer.tick);
        if (counter > 0) {
          counter--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  //
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize32 = (screenWidth <= 600) ? 32 : 42;
    double fontSize24 = (screenWidth <= 600) ? 24 : 28;
    double fontSize16 = (screenWidth <= 600) ? 16 : 22;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .08,
              ),
              //
              Text(
                ' verification    ',
                style: TextStyle(
                  color: Color(0xff6C3428),
                  fontSize: 32,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: MediaQuery.of(context).size.height * .002,
                ),
              ),
              //
              SizedBox(
                height: MediaQuery.of(context).size.height * .016,
              ),
              //
              Text(
                '   we have sent a 4_digit confirmation code. \n         make sure you enter correct code.     ',
                style: TextStyle(
                  color: Color(0xFFBE8C63),
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: MediaQuery.of(context).size.height * .002,
                ),
              ),
              //
              SizedBox(
                height: MediaQuery.of(context).size.height * .058,
              ),
              //
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .06,
                        width: MediaQuery.of(context).size.height * .05,
                        child: TextField(
                          autofocus: true,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          decoration: InputDecoration(
                            counterText: "",
                          ),
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .06,
                        width: MediaQuery.of(context).size.height * .05,
                        child: TextField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          decoration: InputDecoration(
                            counterText: "",
                          ),
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .06,
                        width: MediaQuery.of(context).size.height * .05,
                        child: TextField(
                          autofocus: true,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          decoration: InputDecoration(
                            counterText: "",
                          ),
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .06,
                        width: MediaQuery.of(context).size.height * .05,
                        child: TextField(
                          autofocus: true,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          decoration: InputDecoration(
                            counterText: "",
                          ),
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              //
              Row(
                children: [
                  Text(
                    "   Code Reload In",
                    style: TextStyle(
                      color: Color(0xFFBE8C63),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: MediaQuery.of(context).size.height * .0015,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text(
                        '$counter    ',
                        style: TextStyle(
                          color: Color(0xFFBE8C63),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: MediaQuery.of(context).size.height * .0016,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              //

              SizedBox(
                height: MediaQuery.of(context).size.height * .064,
              ),
              //
              InkWell(
                onTap: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreatNEWPass()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.height * .174,
                    height: MediaQuery.of(context).size.height * .055,
                    decoration: BoxDecoration(
                      color: Color(0xFFBE8C63),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "Verify",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => verification()),
                  );
                },
                child: Text(
                  "Resend code",
                  style: TextStyle(
                    color: Color(0xFFBE8C63),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: MediaQuery.of(context).size.height * .0015,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void dispose() {
    print("dispose");
    c1.dispose();
    c2.dispose();
    c3.dispose();
    c4.dispose();
    _timer.cancel();
    super.dispose();
  }
}
