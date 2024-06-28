import 'package:flutter/material.dart';
import 'package:tourism_app/Helper/api.dart';
import 'package:tourism_app/features/controllers/qr_controller.dart';

import 'package:tourism_app/features/svscreen/search.dart';
import 'package:tourism_app/models/qr_data_model.dart';

import '../favourite/favourite.dart';
import '../home_view.dart';

class ScanResult extends StatefulWidget {
  const ScanResult({
    Key? key,
    required this.id,
  }) : super(key: key);
  final String id;

  @override
  State<ScanResult> createState() => _ScanResultState();
}

class _ScanResultState extends State<ScanResult> {
  late Future<QrData> qrData;
  final QrController QRController = QrController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    qrData = QRController.getData(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize32 = (screenWidth <= 600) ? 32 : 42;
    double fontSize24 = (screenWidth <= 600) ? 24 : 32;
    double fontSize16 = (screenWidth <= 600) ? 16 : 24;
    return Scaffold(
      body: Container(
        // decoration: const BoxDecoration(color: Colors.black),
        child: FutureBuilder(
            future: qrData,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (snapshot.hasError) {
                return const Center(
                  child: Text("No Data Found Scan Again"),
                );
              }

              if (snapshot.hasData) {
                final qr = snapshot.data as QrData;
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Stack(children: [
                              Container(
                                child: Image.network(
                                  "$base/images/${qr.image}",
                                  fit: BoxFit.cover,
                                  width: MediaQuery.of(context).size.width,
                                  height: 300,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.05),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Row(
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
                                        size: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ])
                          ],
                        ),
                      ),
                      //

                      Baseline(
                        baselineType: TextBaseline.alphabetic,
                        baseline: -5,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .03,
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    child: Text(
                                      '   ${qr.name}    ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: const Color(0xFF6C3428),
                                        fontSize: fontSize24,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .005,
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    color: Colors.white,
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 16,
                                            right: 16,
                                            left: 16,
                                            bottom: 16),
                                        child: Text(
                                          '${qr.description}',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: const Color(0xFFBE8C63),
                                            fontSize: fontSize16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .02,
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .032),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
              return const SizedBox();
            }),
      ),
      floatingActionButton: CircleAvatar(
        radius: 32,
        backgroundColor: Colors.white,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 3, color: Colors.brown),
            borderRadius: BorderRadius.circular(100),
          ),
          backgroundColor: const Color(
            0xff6C3428,
          ),
          child: const Icon(
            Icons.camera_alt_rounded,
            size: 32,
            color: Color(
              0xffE4D1B9,
            ),
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: MediaQuery.of(context).size.height * 0.1,
        padding: EdgeInsets.zero,
        shape: const CircularNotchedRectangle(),
        notchMargin: 4,
        child: Container(
          padding: EdgeInsets.zero,
          decoration: const BoxDecoration(
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
                              builder: (context) => const Home_Screen()));
                    },
                    child: const Column(
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Favourite()));
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Color(0xffE4D1B9),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Search()));
                    },
                    child: const Column(
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
                    onPressed: () {},
                    child: const Column(
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
}
