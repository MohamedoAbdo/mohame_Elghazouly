import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:tourism_app/features/home/scan/scan_action.dart';

class ScanDesign extends StatefulWidget {
  const ScanDesign({Key? key}) : super(key: key);

  @override
  State<ScanDesign> createState() => _ScanDesignState();
}

class _ScanDesignState extends State<ScanDesign> {
  String qrstr = "No data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Color(0xff6C3428),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          const Text(
            'Set Up QR Code..',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w800,
              color: Color(0xff6C3428),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          const Text(
            'Scan The QR Code To Get All Information About Artifacts .',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xffBE8C63),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Image.asset('assets/image/svan_design.png'),
          const SizedBox(
            height: 64,
          ),
          InkWell(
            onTap: () async {
              scanQr();
            },
            child: Container(
              width: MediaQuery.of(context).size.height * 0.23,
              height: MediaQuery.of(context).size.height * 0.075,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xffBE8C63),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                'Scan',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ]),
      )),
    );
  }

  Future<void> scanQr() async {
    try {
      FlutterBarcodeScanner.scanBarcode('#2A99CF', 'cancel', true, ScanMode.QR)
          .then((value) {
        setState(() {
          qrstr = value;
        });
        if (value.isNotEmpty) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ScanAction(
                  value: value,
                ),
              ));
        }
      });
    } catch (e) {
      setState(() {
        qrstr = 'unable to read this';
      });
    }
  }
}
