import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:tourism_app/features/home/notivigation/notifigation.dart';
import 'package:tourism_app/features/home/presentation/favourite/favourite.dart';
import 'package:tourism_app/features/home/presentation/home_view.dart';
import 'package:tourism_app/features/svscreen/ChangeLanguage.dart';
import 'package:tourism_app/features/svscreen/edetprofile.dart';
import 'package:tourism_app/features/svscreen/logup.dart';
import 'package:tourism_app/features/svscreen/search.dart';
import 'package:tourism_app/features/svscreen/login.dart';
import 'package:tourism_app/generated/l10n.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  late User signedinuser;
  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        signedinuser = user;
        print(signedinuser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  void messagesStreams() async {
    await for (var snapshot in _firestore.collection('messages').snapshots()) {
      for (var message in snapshot.docs) {
        print(message.data());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize32 = (screenWidth <= 600) ? 32 : 42;
    double fontSize24 = (screenWidth <= 600) ? 24 : 28;
    double fontSize16 = (screenWidth <= 600) ? 16 : 22;
    final GlobalKey<ScaffoldState> key = GlobalKey();

    return Scaffold(
      key: key,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .030),
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
                                " ",
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
                      S.of(context).Profile,
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
                height: MediaQuery.of(context).size.height * .05,
              ),
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('assets/image/Ellipse 9310.png'),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .016,
              ),

              Text(
                email,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: fontSize24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff6C3428),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .016),
              InkWell(
                onTap: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => edetprofile()),
                  );

                  ;
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.height * .172,
                    height: MediaQuery.of(context).size.height * .060,
                    decoration: BoxDecoration(
                      color: Color(0xFFBE8C63),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.edit,
                          color: Color(0xFFFFFFFF),
                        ),
                        Text(
                          S.of(context).Edit_Profile,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: MediaQuery.of(context).size.height * .019,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .051,
              ),
              _settingItem(
                title: S.of(context).notification,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notifica()));
                },
              ),
              SizedBox(height: .001),
              Image.asset(
                'assets/image/Line 9.png',
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .010),
              _settingItem(
                title: S.of(context).Language,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChangeLanguage()));
                },
              ),
              SizedBox(height: .001),

              Image.asset(
                'assets/image/Line 9.png',
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .01),
              _settingItem(
                title: S.of(context).fav,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Favourite()));
                },
              ),
              SizedBox(height: .001),

              Image.asset(
                'assets/image/Line 9.png',
              ),
              _settingItem(
                title: S.of(context).Help,
                onTap: () {
                  // Navigator.push( context, MaterialPageRoute( builder: (context) => PharaonicVillage()));
                },
              ),
              SizedBox(height: .001),

              Image.asset(
                'assets/image/Line 9.png',
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .032),
              //
              MaterialButton(
                onPressed: () {
                  AwesomeDialog(
                    width: MediaQuery.of(context).size.height * 1.0,
                    bodyHeaderDistance: 32,
                    context: context,
                    dialogType: DialogType.noHeader,
                    animType: AnimType.rightSlide,
                    title: S.of(context).log_title,
                    titleTextStyle: TextStyle(
                      color: Color(0xff6C3428),
                      fontSize: fontSize16,
                      fontFamily: 'intr',
                      fontWeight: FontWeight.w500,
                    ),
                    btnCancelOnPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileScreen()));
                    },
                    btnCancelText: (S.of(context).cancel),
                    btnCancelColor: Colors.white,
                    buttonsTextStyle: TextStyle(
                      color: Color(0xFFE4D1B9),
                      fontSize: fontSize16,
                      fontFamily: 'intr',
                      fontWeight: FontWeight.w500,
                    ),
                    btnOkOnPress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => signin()));
                    },
                    btnOkText: (S.of(context).Log_Out),
                    btnOkColor: Color(0xFFBE8C63),
                  )..show();
                },
                child: Row(
                  children: [
                    Text(
                      S.of(context).Log_Out,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFBE8C63),
                        fontSize: fontSize16,
                        fontFamily: 'intr',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: CircleAvatar(
        radius: 32,
        backgroundColor: Colors.white,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 3, color: Colors.brown),
            borderRadius: BorderRadius.circular(100),
          ),
          backgroundColor: Color(
            0xff6C3428,
          ),
          child: Icon(
            Icons.camera_alt_rounded,
            size: 32,
            color: Color(0xffE4D1B9),
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: MediaQuery.of(context).size.height * 0.1,
        padding: EdgeInsets.zero,
        shape: CircularNotchedRectangle(),
        notchMargin: 4,
        child: Container(
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Color(0xff6c3428),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.2,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Home_Screen()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: Color(0xffE4D1B9),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.2,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Favourite()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Color(0xffBE8C63),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.2,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Search()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color: Color(0xffE4D1B9),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.2,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileScreen()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_rounded,
                          color: Color(0xffE4D1B9),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _settingItem({
    required String title,
    required VoidCallback onTap,
    Color? iconColor,
  }) {
    return Container(
      child: ListTile(
        onTap: onTap,
        title: Text(title),
        textColor: Color(0xFFBE8C63),
        titleTextStyle: TextStyle(
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Color(0xFFBE8C63),
        ),
      ),
    );
  }
}
