import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/Helper/app_helper.dart';
import 'package:tourism_app/features/home/presentation/home_view.dart';
import 'package:tourism_app/generated/l10n.dart';

enum Answers {
  coastalTourism,
  religiousTourism,
  archaeologicalTourism,
  medicalTourism;

  String name(BuildContext context) {
    // use  the context if u want to translate the text
    switch (this) {
      case Answers.coastalTourism:
        return S.of(context).coastal_tourism;
      case Answers.religiousTourism:
        return S.of(context).religious_tourism;
      case Answers.archaeologicalTourism:
        return S.of(context).archaeologicalTourism;
      case Answers.medicalTourism:
        return S.of(context).medical_tourism;
    }
  }

  String value() {
    switch (this) {
      case Answers.coastalTourism:
        return 'Coastal tourism';
      case Answers.religiousTourism:
        return 'Religious tourism';
      case Answers.medicalTourism:
        return 'Medical tourism';
      case Answers.archaeologicalTourism:
        return 'Archaeological tourism';
    }
  }
}

class QuickPage1 extends StatefulWidget {
  const QuickPage1({super.key, required this.isVisit});
  final bool isVisit;
  @override
  State<QuickPage1> createState() => _QuickPage1State();
}

class _QuickPage1State extends State<QuickPage1> {
  Answers? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.width * 0.04,
            horizontal: MediaQuery.of(context).size.width * 0.04,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Color(0xff6C3428),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  const Text(
                    'Quick Survey',
                    style: TextStyle(
                      color: Color(0xff6C3428),
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              if (widget.isVisit) ...[
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: Text(
                        'What Place Did You Visit ?',
                        style: TextStyle(
                          color: Color(0xff6C3428),
                          fontSize: 24,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(18, 18)),
                            borderSide: BorderSide(color: Color(0xffE4D1B9))),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffE4D1B9)),
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(18, 18))),
                        labelText: 'Enter Places Name',
                        labelStyle: TextStyle(color: Color(0xffE4D1B9)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(18, 18)),
                            borderSide: BorderSide(color: Color(0xffE4D1B9)))),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
              ],
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.01),
                    child: const Text(
                      'What Tourisms Do You Prefer ?',
                      style: TextStyle(
                        color: Color(0xff6C3428),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.03),
                    child: const Text(
                      'Choose More Than One',
                      style: TextStyle(
                        color: Color(0xffE4D1B9),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding:
                    EdgeInsets.all((MediaQuery.of(context).size.width * 0.02)),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.33,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(blurRadius: 2, color: Color(0xffE4D1B9))
                      ],
                      borderRadius: BorderRadius.circular(16),
                      // color: Colors.cyan,
                      color: const Color(0xffFFFFFF)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (var answer in Answers.values)
                        InkWell(
                          onTap: () {
                            selectedAnswer = answer;
                            setState(() {});
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                  width: 20,
                                  height: 20,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: const Color(0xffE4D1B9),
                                        width: 1.9),
                                  ),
                                  child: answer == selectedAnswer
                                      ? const CircleAvatar(
                                          radius: 5.5,
                                          backgroundColor: Color(0xffE4D1B9))
                                      : const SizedBox.shrink()),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                answer.name(context),
                                style: const TextStyle(
                                  color: Color(0xff6C3428),
                                  fontSize: 24,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                    color: const Color(0xffBE8C63),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 51,
                    minWidth: 190,
                    onPressed: () {
                      if (selectedAnswer != null) {
                        AppHelper.setSelectedAnswer(selectedAnswer!.value());
                      }
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home_Screen(),
                        ),
                        (route) => false,
                      );
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        color: Color(0xffE4D1B9),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
