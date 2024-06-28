import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism_app/features/svscreen/logup.dart';

import 'package:tourism_app/features/svscreen/profile.dart';
import 'package:tourism_app/generated/l10n.dart';

class edetprofile extends StatefulWidget {
  const edetprofile({super.key});

  @override
  State<edetprofile> createState() => _edetprofileState();
}

class _edetprofileState extends State<edetprofile> {
  bool ispassword = true;
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize32 = (screenWidth <= 600) ? 32 : 40;
    double fontSize24 = (screenWidth <= 600) ? 24 : 32;
    double fontSize16 = (screenWidth <= 600) ? 16 : 24;
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .05),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileScreen()),
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
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      S.of(context).Edit_Profile,
                      style: TextStyle(
                        color: Color(0xff6C3428),
                        fontSize: fontSize24,
                        fontFamily: 'intr',
                        fontWeight: FontWeight.w600,
                        height: MediaQuery.of(context).size.height * .002,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .08,
              ),
              //
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/image/Ellipse 9310.png'),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .016),

              Text(
                email,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: fontSize24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff6C3428),
                ),
              ),

              //asset
              SizedBox(
                height: MediaQuery.of(context).size.height * .08,
              ),

              // Text full name
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, right: 16, left: 16, bottom: 0),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Text(
                      S.of(context).Name,
                      style: TextStyle(
                        color: Color(0xFFBE8C63),
                        fontSize: fontSize16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0.09,
                      ),
                    ),

                    prefixIcon: Icon(
                      Icons.person,
                      color: Color(0xffBE8C63),
                    ),
                    // border: OutlineInputBorder()
                  ),
                ),
              ),

              // bottom email
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, right: 16, left: 16, bottom: 0),
                child: TextFormField(
                  controller: emailcontroller,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null ||
                        value.contains('@gmail.com') == false) {
                      return 'Enter valid Email';
                    }
                  },
                  decoration: InputDecoration(
                    label: Text(
                      S.of(context).Email,
                      style: TextStyle(
                        color: Color(0xFFBE8C63),
                        fontSize: fontSize16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: MediaQuery.of(context).size.height * .00009,
                      ),
                    ),

                    prefixIcon: Icon(
                      Icons.email,
                      color: Color(0xffBE8C63),
                    ),
                    //border: OutlineInputBorder()
                  ),
                ),
              ),

              //Text phone
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, right: 16, left: 16, bottom: 0),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    label: Text(
                      S.of(context).Phone,
                      style: TextStyle(
                        color: Color(0xFFBE8C63),
                        fontSize: fontSize16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: MediaQuery.of(context).size.height * .00009,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.call,
                      color: Color(0xffBE8C63),
                    ),
                    //border: OutlineInputBorder()
                  ),
                ),
              ),

              // bottom password
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, right: 16, left: 16, bottom: 0),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordcontroller,
                  obscureText: ispassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value.length < 8) {
                      return 'Enter valid password';
                    }
                  },
                  decoration: InputDecoration(
                    label: Text(
                      S.of(context).password,
                      style: TextStyle(
                        color: Color(0xFFBE8C63),
                        fontSize: fontSize16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: MediaQuery.of(context).size.height * .00009,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xffBE8C63),
                    ),
                    suffixIcon: ispassword
                        ? IconButton(
                            icon: Icon(Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                ispassword = !ispassword;
                              });
                            },
                          )
                        : IconButton(
                            icon: Icon(Icons.visibility),
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

              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
              ),
              // bottom create
              // bottom create
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  //padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFFBE8C63),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: MediaQuery.of(context).size.width * .35,
                  height: MediaQuery.of(context).size.height * .05,

                  child: MaterialButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        bool result = await fireBaseSingUp(
                            emailcontroller.text, passwordcontroller.text);
                        if (result == true) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('success')),
                          );

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfileScreen()));
                        }
                      }
                    },
                    child: Text(
                      S.of(context).save,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: fontSize16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),

              //
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> fireBaseSingUp(String email, String password) async {
    try {
      UserCredential usercredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (usercredential.user != null) {
        return true;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    return false;
  }
}
