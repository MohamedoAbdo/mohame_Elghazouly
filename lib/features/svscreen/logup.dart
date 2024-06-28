import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tourism_app/Helper/app_helper.dart';
import 'package:tourism_app/Helper/serices.dart';
import 'package:tourism_app/features/home/presentation/home_view.dart';
import 'package:tourism_app/features/svscreen/bage6.dart';
import 'package:tourism_app/features/svscreen/login.dart';
import 'package:tourism_app/generated/l10n.dart';
import 'package:tourism_app/models/refresh_model.dart';
import 'package:tourism_app/services/refresh.dart';
import 'package:firebase_auth/firebase_auth.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

String email = '';
String name = '';

class _signupState extends State<signup> {
  // ignore: prefer_typing_uninitialized_variables
  final _firestore = FirebaseFirestore.instance;
  TextEditingController nemecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  void initstata() {
    super.initState();
    emailcontroller.addListener(() {
      setState(() {
        email = emailcontroller.text;
      });
    });
    nemecontroller.addListener(() {
      setState(() {
        name = nemecontroller.text;
      });
    });
  }

  void getmessaged() async {
    final messages = await _firestore.collection('messages').get();
    for (var message in messages.docs) {
      print(message.data());
    }
  }

  final auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  final _forKey = GlobalKey<FormState>();
  bool ispassword = true;
  bool ispassword2 = true;

  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController passwordcontroller2 = TextEditingController();
  late String Name, Email, password, image;
  int? Phone;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize32 = (screenWidth <= 600) ? 32 : 42;
    double fontSize24 = (screenWidth <= 600) ? 24 : 28;
    double fontSize16 = (screenWidth <= 600) ? 16 : 22;
    return Scaffold(
      body: Form(
        key: _forKey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
              ),
              //
              Row(
                children: [
                  Text(
                    S.of(context).Create,
                    style: const TextStyle(
                      color: Color(0xFF6C3428),
                      fontSize: 32,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),

              //asset
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.height * .128,
                height: MediaQuery.of(context).size.height * .128,
                child: Image.asset("assets/image/bro.png"),

                //_LoginscreenState
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .044,
              ),

              // Text full name
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, right: 16, left: 16, bottom: 0),
                child: TextFormField(
                  onChanged: (value) {
                    name = value;
                  },
                  controller: nemecontroller,
                  decoration: InputDecoration(
                    label: Text(
                      S.of(context).Name,
                      style: TextStyle(
                        color: const Color(0xFF6C3428),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: MediaQuery.of(context).size.height * .00009,
                      ),
                    ),

                    prefixIcon: const Icon(
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
                  onChanged: (value) {
                    email = value;
                  },
                  controller: emailcontroller,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null ||
                        value.contains('@gmail.com') == false) {
                      return 'Enter valid Email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
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

                    prefixIcon: const Icon(
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
                  onChanged: (value) {
                    Phone = int.parse(value);
                  },
                  keyboardType: TextInputType.number,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value.length < 11) {
                      return 'Enter valid phone';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    label: Text(
                      S.of(context).Phone,
                      style: TextStyle(
                        color: const Color(0xFF6C3428),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: MediaQuery.of(context).size.height * .00009,
                      ),
                    ),
                    prefixIcon: const Icon(
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
                  onChanged: (value) {
                    password = value;
                  },
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
                        height: MediaQuery.of(context).size.height * .00009,
                      ),
                    ),
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Color(0xffBE8C63),
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
              // bottom password
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, right: 16, left: 16, bottom: 0),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordcontroller2,
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
                        height: MediaQuery.of(context).size.height * .00009,
                      ),
                    ),
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Color(0xffBE8C63),
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
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              // bottom create
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  //padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFBE8C63),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: MediaQuery.of(context).size.height * .181,
                  height: MediaQuery.of(context).size.height * .051,

                  child: MaterialButton(
                    onPressed: () async {
                      getmessaged();
                      // messagesStreams();
                      _firestore.collection('messages').add({
                        'email': email,
                        'name': name,
                      });

                      if (_forKey.currentState!.validate()) {
                        bool result = await fireBaseSingUp(
                            emailcontroller.text, passwordcontroller.text);
                        if (result == true) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('success')),
                          );

                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const bage6()),
                              (route) => false);
                        }
                      }
                    },
                    child: Text(
                      S.of(context).sign_in,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              //

              //
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    S.of(context).you_have,
                    style: TextStyle(
                      color: const Color(0xFF6C3428),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: MediaQuery.of(context).size.height * .0016,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const signin()),
                      );
                    },
                    child: Text(
                      S.of(context).sign_in,
                      style: TextStyle(
                        color: const Color(0xFFBE8C63),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: MediaQuery.of(context).size.height * .0015,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .08,
                  ),
                ],
              ),
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
        AppHelper.setUserUuid(usercredential.user!.uid);
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
