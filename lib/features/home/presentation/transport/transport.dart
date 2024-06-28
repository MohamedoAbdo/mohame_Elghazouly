import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/features/home/presentation/home_view.dart';
import 'package:url_launcher/url_launcher.dart';

class Transprant extends StatelessWidget {
  const Transprant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home_Screen()));
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Color(0xff6C3428),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    'Transportation',
                    style: TextStyle(
                      color: Color(0xff6C3428),
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      'Ride_Hailing Services:',
                      style: TextStyle(
                        color: Color(0xff6C3428),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap: () async {
                      launchCustomUrl(context,
                          url: "https://www.uber.com/eg/en/");
                    },
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image.asset(
                          'assets/image/uber.png',
                          width: 180,
                        ),
                        Image.asset(
                          'assets/image/uberr.png',
                          width: 180,
                        ),
                      ],
                    ),
                  ),
                  Text("  "),
                  InkWell(
                    onTap: () async {
                      launchCustomUrl(context,
                          url: "https://drive.careem.com/ar-eg/suez");
                    },
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image.asset(
                          'assets/image/careem.png',
                          width: 180,
                        ),
                        Image.asset(
                          'assets/image/careemm.png',
                          width: 180,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  'Car_Rental:',
                  style: TextStyle(
                    color: Color(0xff6C3428),
                    fontSize: 24,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              GridView.count(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 187 / 188,
                children: List.generate(
                    4,
                    (index) => InkWell(
                          onTap: () async {
                            launchCustomUrl(context,
                                url: index == 0
                                    ? "https://dollarjo.com/?gad_source=1&gclid=CjwKCAjw48-vBhBbEiwAzqrZVDYuQOPB5eeb3VaUtmt-901mLmVYcAsb4lxeyfQrH25hn6RH8m7UhBoCDEAQAvD_BwE"
                                    : index == 1
                                        ? 'https://wa.me/+201099987070'
                                        : index == 2
                                            ? 'https://wa.me/+201101555356'
                                            : "https://wa.me/+201005363178");
                          },
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Image.asset(
                                  // 'assets/image/car.png',
                                  index == 0
                                      ? 'assets/image/car.png'
                                      : index == 1
                                          ? 'assets/image/car1.jpg'
                                          : index == 2
                                              ? 'assets/image/car2.jpg'
                                              : 'assets/image/car3.jpg',
                                  // width: MediaQuery.of(context).size.height * 0.25,
                                ),
                                Image.asset(
                                  // 'assets/image/carr.png',
                                  index == 0
                                      ? 'assets/image/carr.png'
                                      : index == 1
                                          ? 'assets/image/hal1.png'
                                          : index == 2
                                              ? 'assets/image/hal2.png'
                                              : 'assets/image/hal3.png',
                                  width: 187,
                                ),
                              ]),
                        )),
              )
            ],
          ),
        ),
      ),
    ));
  }

  Future<void> launchCustomUrl(
    context, {
    required String url,
  }) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      customSunkBar(context, text: ('can not launch this $url'));
    }
  }

  void customSunkBar(context, {required String text}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
}
