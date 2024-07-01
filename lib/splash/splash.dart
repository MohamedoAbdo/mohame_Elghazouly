import 'package:flutter/material.dart';
import 'package:tourism_app/features/home/presentation/home_view.dart';
import 'package:tourism_app/features/svscreen/bage1.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    navigateToHome();
  }

  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Image.asset(
            "assets/image/photo_8_2024-04-20_15-55-17.jpg",
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: double.maxFinite,
          height: double.maxFinite,
          alignment: Alignment.center,
          child: Image.asset(
            "assets/image/Frame 11593.png",
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }

//Frame 11593.png
  void navigateToHome() {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => bage1(),
          ),
          (route) => false,
        );
      },
    );
  }
}
