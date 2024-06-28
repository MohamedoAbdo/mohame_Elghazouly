// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:tourism_app/features/home/presentation/home_view.dart';

// class Quick extends StatefulWidget {
//   const Quick({super.key});

//   @override
//   State<Quick> createState() => _QuickState();
// }

// class _QuickState extends State<Quick> {
//   String x = '0', y = '0', z = '0', c = '0';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.symmetric(
//               horizontal: MediaQuery.of(context).size.width * 0.04),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               const SizedBox(
//                 height: 32,
//               ),
//               Row(
//                 children: [
//                   const Icon(
//                     Icons.arrow_back_ios_new,
//                     color: Color(0xff6C3428),
//                   ),
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * 0.05,
//                   ),
//                   const Text(
//                     'Quick Survey',
//                     style: TextStyle(
//                       color: Color(0xff6C3428),
//                       fontSize: 24,
//                       fontFamily: 'Inter',
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * 0.05,
//               ),
//               Row(
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.symmetric(
//                         horizontal: MediaQuery.of(context).size.width * 0.02),
//                     child: Text(
//                       'What Tourisms Do You Prefer ?',
//                       style: TextStyle(
//                         color: const Color(0xff6C3428),
//                         fontSize: 24,
//                         fontFamily: 'Inter',
//                         fontWeight: FontWeight.w500,
//                         height: 0,
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//               const SizedBox(
//                 height: 8,
//               ),
//               Row(
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.symmetric(
//                         horizontal: MediaQuery.of(context).size.width * 0.03),
//                     child: const Text(
//                       'Choose More Than One',
//                       style: TextStyle(
//                         color: Color(0xffE4D1B9),
//                         fontSize: 14,
//                         fontFamily: 'Inter',
//                         fontWeight: FontWeight.w500,
//                         height: 0,
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//               const SizedBox(
//                 height: 32,
//               ),
//               Padding(
//                 padding:
//                     EdgeInsets.all((MediaQuery.of(context).size.width * 0.02)),
//                 child: Container(
//                   width: MediaQuery.of(context).size.width * 0.9,
//                   height: MediaQuery.of(context).size.height * 0.33,
//                   padding: const EdgeInsets.all(15),
//                   decoration: BoxDecoration(
//                       boxShadow: [
//                         const BoxShadow(blurRadius: 2, color: Colors.black45)
//                       ],
//                       borderRadius: BorderRadius.circular(16),
//                       // color: Colors.cyan,
//                       color: const Color(0xffFFFFFF)),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       InkWell(
//                         onTap: () {
//                           x == '10' ? x = 'e' : x = '10';
//                           setState(() {});
//                         },
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Container(
//                                 width: 20,
//                                 height: 20,
//                                 alignment: Alignment.center,
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   border: Border.all(
//                                       color: const Color(0xffE4D1B9),
//                                       width: 1.9),
//                                 ),
//                                 child: x == "10"
//                                     ? const CircleAvatar(
//                                         radius: 5.5,
//                                         backgroundColor: Color(0xffE4D1B9))
//                                     : const SizedBox.shrink()),
//                             const SizedBox(
//                               width: 15,
//                             ),
//                             const Text(
//                               'Coastal Tourism',
//                               style: TextStyle(
//                                 color: Color(0xff6C3428),
//                                 fontSize: 24,
//                                 fontFamily: 'Inter',
//                                 fontWeight: FontWeight.w400,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: MediaQuery.of(context).size.height * 0.01,
//                       ),
//                       InkWell(
//                         onTap: () {
//                           z == '10' ? z = 'e' : z = '10';
//                           setState(() {});
//                         },
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Container(
//                                 width: 20,
//                                 height: 20,
//                                 alignment: Alignment.center,
//                                 decoration: BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     border: Border.all(
//                                         color: const Color(0xffE4D1B9),
//                                         width: 1.9)),
//                                 child: z == "10"
//                                     ? const CircleAvatar(
//                                         radius: 5.5,
//                                         backgroundColor: Color(0xffE4D1B9))
//                                     : const SizedBox.shrink()),
//                             const SizedBox(
//                               width: 15,
//                             ),
//                             const Text(
//                               'Religious Tourism',
//                               style: TextStyle(
//                                 color: Color(0xff6C3428),
//                                 fontSize: 24,
//                                 fontFamily: 'Inter',
//                                 fontWeight: FontWeight.w400,
//                                 height: 0,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: MediaQuery.of(context).size.height * 0.01,
//                       ),
//                       InkWell(
//                         onTap: () {
//                           y == '10' ? y = 'e' : y = '10';
//                           setState(() {});
//                         },
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Container(
//                                 width: 20,
//                                 height: 20,
//                                 alignment: Alignment.center,
//                                 decoration: BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     border: Border.all(
//                                         color: const Color(0xffE4D1B9),
//                                         width: 1.9)),
//                                 child: y == "10"
//                                     ? const CircleAvatar(
//                                         radius: 5.5,
//                                         backgroundColor: Color(0xffE4D1B9))
//                                     : const SizedBox.shrink()),
//                             const SizedBox(
//                               width: 15,
//                             ),
//                             const Text(
//                               'Medical Tourism',
//                               style: TextStyle(
//                                 color: Color(0xff6C3428),
//                                 fontSize: 24,
//                                 fontFamily: 'Inter',
//                                 fontWeight: FontWeight.w400,
//                                 height: 0,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: MediaQuery.of(context).size.height * 0.01,
//                       ),
//                       InkWell(
//                         onTap: () {
//                           c == '10' ? c = 'e' : c = '10';
//                           setState(() {});
//                         },
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Container(
//                                 width: 20,
//                                 height: 20,
//                                 alignment: Alignment.center,
//                                 decoration: BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     border: Border.all(
//                                         color: const Color(0xffE4D1B9),
//                                         width: 1.9)),
//                                 child: c == "10"
//                                     ? const CircleAvatar(
//                                         radius: 5.5,
//                                         backgroundColor: Color(0xffE4D1B9))
//                                     : const SizedBox.shrink()),
//                             const SizedBox(
//                               width: 15,
//                             ),
//                             Text(
//                               'Archaeological Tourism',
//                               style: TextStyle(
//                                 color: const Color(0xff6C3428),
//                                 fontSize: 24,
//                                 fontFamily: 'Inter',
//                                 fontWeight: FontWeight.w400,
//                                 height: 0,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: MediaQuery.of(context).size.height * 0.01,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 40,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: MaterialButton(
//                     color: const Color(0xffBE8C63),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     height: 51,
//                     minWidth: 190,
//                     onPressed: () {
//                       Navigator.pushAndRemoveUntil(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const Home_Screen()),
//                         (route) => false,
//                       );
//                     },
//                     child: const Text(
//                       'Submit',
//                       style: TextStyle(
//                         color: Color(0xffE4D1B9),
//                         fontSize: 16,
//                         fontFamily: 'Inter',
//                         fontWeight: FontWeight.w600,
//                       ),
//                     )),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
