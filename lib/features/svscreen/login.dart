import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tourism_app/Helper/app_helper.dart';
import 'package:tourism_app/features/home/presentation/home_view.dart';
import 'package:tourism_app/features/home/presentation/password_view/forget_pass.dart';
import 'package:tourism_app/features/svscreen/bage6.dart';
import 'package:tourism_app/features/svscreen/logup.dart';
import 'package:tourism_app/generated/l10n.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  bool ispassword = true;
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize32 = (screenWidth <= 600) ? 32 : 42;
    double fontSize24 = (screenWidth <= 600) ? 24 : 28;
    double fontSize16 = (screenWidth <= 600) ? 16 : 22;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .07,
            ),
            Form(
              key: _formKey,
              child: Column(children: [
                Stack(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: MediaQuery.of(context).size.height * .15,
                          child: Text(
                            S.of(context).log,
                            style: const TextStyle(
                              color: Color(0xff6C3428),
                              fontSize: 32,
                              fontFamily: 'inter',
                              fontWeight: FontWeight.w600,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .040,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .15,
                  child: Image.asset("assets/image/bro.png"),

                  //_LoginscreenState
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .030,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, right: 24, left: 24, bottom: 0),
                  child: TextFormField(
                    controller: emailcontroller,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || !value.contains('@gmail.com')) {
                        return 'Enter valid Email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Color(0xFFBE8C63),
                        size: 20,
                      ),
                      label: Text(
                        S.of(context).Email,
                        style: TextStyle(
                          color: const Color(0xFF6C3428),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: MediaQuery.of(context).size.height * .00009,
                        ),
                      ),
                      // border: OutlineInputBorder()
                    ),
                  ),
                ),

                // bottom password
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, right: 24, left: 24, bottom: 0),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordcontroller,
                    obscureText: ispassword,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.length < 8) {
                        return 'Enter valid password';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      label: Text(
                        S.of(context).password,
                        style: TextStyle(
                          color: const Color(0xFF6C3428),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: MediaQuery.of(context).size.height * .0009,
                        ),
                      ),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Color(0xFFBE8C63),
                        size: 20,
                      ),
                      suffixIcon: ispassword
                          ? IconButton(
                              icon: const Icon(Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  ispassword = !ispassword;
                                });
                              },
                            )
                          : IconButton(
                              icon: const Icon(Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  ispassword = !ispassword;
                                });
                              },
                            ),
                      //border: OutlineInputBorder()
                    ),
                  ),
                ),
                //
                SizedBox(
                  height: MediaQuery.of(context).size.height * .015,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgetPass()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        S.of(context).Forget,
                        style: TextStyle(
                          color: const Color(0xFF6C3428),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: MediaQuery.of(context).size.height * .002,
                        ),
                        textAlign: TextAlign.right,
                      ),
                      const Text("    ")
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .07,
                ),

                InkWell(
                  onTap: () async {
                    if (_formKey.currentState!.validate()) {
                      bool result = await firebaselogin(
                          emailcontroller.text, passwordcontroller.text);
                      if (result == true) {
                        //final SharedPreferences prefs = await SharedPreferences.getInstance();
                        // await prefs.setString('email', emailcontroller.text);

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const bage6()),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text(
                            S.of(context).login_faild,
                          )),
                        );
                      }
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * .055,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        color: const Color(0xFFBE8C63),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          S.of(context).Login,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("     "),
                    Image.asset(
                      "assets/image/Line 2.png",
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: MediaQuery.of(context).size.height * .009,
                    ),
                    Row(
                      children: [
                        Text(S.of(context).Login_With,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Color(0xFF6C3428),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            ))
                      ],
                    ),
                    Image.asset(
                      "assets/image/Line 2.png",
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: MediaQuery.of(context).size.height * .009,
                    )
                  ],
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Row(
                      children: [],
                    ),
                    Image.asset(
                      "assets/image/Group 3.png",
                      width: MediaQuery.of(context).size.width * 0.150,
                      height: MediaQuery.of(context).size.height * .065,
                    ),
                    Image.asset(
                      "assets/image/Group 5.png",
                      width: MediaQuery.of(context).size.width * 0.150,
                      height: MediaQuery.of(context).size.height * .065,
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).you_don,
                      style: const TextStyle(
                        color: Color(0xFF6C3428),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const signup()),
                        );
                      },
                      child: Text(
                        S.of(context).sign_up,
                        style: const TextStyle(
                          color: Color(0xFFBE8C63),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .08,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> firebaselogin(String email, String password) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential.user != null) {
        AppHelper.setUserUuid(userCredential.user!.uid);
        return true;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
    return false;
  }
}
