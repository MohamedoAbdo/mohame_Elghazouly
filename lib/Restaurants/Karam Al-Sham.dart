// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:tourism_app/features/svscreen/Coastaltourism.dart';
// import 'package:tourism_app/features/svscreen/Restaurants.dart';
// import 'package:tourism_app/features/svscreen/profile.dart';
// import 'package:tourism_app/features/svscreen/search.dart';
// import 'package:tourism_app/generated/l10n.dart';

// class Karam extends StatefulWidget {
//   const Karam({super.key});

//   @override
//   State<Karam> createState() => _streoState();
// }

// class _streoState extends State<Karam> {
//   final _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double fontSize32 = (screenWidth <= 600) ? 32 : 42;
//     double fontSize24 = (screenWidth <= 600) ? 24 : 32;
//     double fontSize16 = (screenWidth <= 600) ? 16 : 24;
//     return Scaffold(
//       body: Container(
//         key: _formKey,
//         decoration: const BoxDecoration(color: Colors.black),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Container(
//                 child: Column(
//                   children: [
//                     Stack(children: [
//                       Image.asset(
//                         'assets/image/013.jpg',
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 50),
//                         child: InkWell(
//                           onTap: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => Restaurants()),
//                             );
//                           },
//                           child: Row(
//                             children: [
//                               Row(
//                                 children: [
//                                   Text(
//                                     "     ",
//                                   )
//                                 ],
//                               ),
//                               Icon(
//                                 Icons.arrow_back_ios,
//                                 color: Color(0xffE4D1B9),
//                                 size: 30,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ])
//                   ],
//                 ),
//               ),
//               //

//               //
//               Container(
//                 width: MediaQuery.of(context).size.height * 1.0,
//                 height: MediaQuery.of(context).size.height * 1.5,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Row(
//                   children: [
//                     Column(
//                       children: [
//                         SizedBox(
//                           height: MediaQuery.of(context).size.height * .030,
//                         ),
//                         //
//                         Container(
//                             width: MediaQuery.of(context).size.width * .90,
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text("  Karam Al-Sham",
//                                     style: TextStyle(
//                                       color: Color(0xFF6C3428),
//                                       fontSize: fontSize24,
//                                       fontWeight: FontWeight.w500,
//                                     )),
//                                 Icon(
//                                   Icons.favorite,
//                                   color: Color(0xFF6C3428),
//                                 ),
//                               ],
//                             )),

//                         SizedBox(
//                           height: MediaQuery.of(context).size.height * .015,
//                         ),
//                         Row(
//                           children: [
//                             Row(
//                               children: [
//                                 InkWell(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                           builder: (context) => Karam()),
//                                     );
//                                   },
//                                   child: Container(
//                                     child: Column(
//                                       children: [
//                                         Stack(children: [
//                                           Image.asset(
//                                             'assets/image/0131.jpg',
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width *
//                                                 .45,
//                                             height: MediaQuery.of(context)
//                                                     .size
//                                                     .height *
//                                                 .3,
//                                           ),
//                                         ])
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Row(
//                               children: [
//                                 Text(
//                                   "   ",
//                                 )
//                               ],
//                             ),
//                             Row(
//                               children: [
//                                 InkWell(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                           builder: (context) => Karam()),
//                                     );
//                                   },
//                                   child: Container(
//                                     child: Column(
//                                       children: [
//                                         Stack(children: [
//                                           Image.asset(
//                                             'assets/image/0132.jpg',
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width *
//                                                 .45,
//                                             height: MediaQuery.of(context)
//                                                     .size
//                                                     .height *
//                                                 .3,
//                                           ),
//                                         ])
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),

//                         //

//                         SizedBox(
//                             height: MediaQuery.of(context).size.height * .02),

//                         Container(
//                           width: MediaQuery.of(context).size.width * 1.0,
//                           child: Text(
//                             S.of(context).Description,
//                             style: TextStyle(
//                               color: Color(0xFF6C3428),
//                               fontSize: fontSize16,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         ),

//                         Padding(
//                           padding: const EdgeInsets.only(
//                               top: 16, right: 16, left: 16, bottom: 16),
//                           child: Container(
//                             height: MediaQuery.of(context).size.height * .4,
//                             width: MediaQuery.of(context).size.width * .9,
//                             color: Colors.white,
//                             child: Center(
//                               child: Text(
//                                 S.of(context).Karam,
//                                 style: TextStyle(
//                                   color: Color(0xFFBE8C63),
//                                   fontSize: fontSize16,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),

//                         //
//                         SizedBox(
//                             height: MediaQuery.of(context).size.height * .04),
//                         //
//                         Image.asset(
//                           'assets/image/Line 12.png',
//                           width: MediaQuery.of(context).size.width * 0.9,
//                         ),
//                         SizedBox(
//                             height: MediaQuery.of(context).size.height * .04),

//                         Container(
//                           width: MediaQuery.of(context).size.width * 1.0,
//                           child: Padding(
//                             padding: const EdgeInsets.only(right: 16, left: 16),
//                             child: Row(
//                               children: [
//                                 Icon(
//                                   Icons.mail,
//                                   color: Color(0xFF6C3428),
//                                   size: 20,
//                                 ),
//                                 Row(
//                                   children: [
//                                     Text(
//                                         "    https://www.facebook.com/KaramLSham/about",
//                                         style: TextStyle(
//                                           color: Color(0xFF6C3428),
//                                           fontSize: 13,
//                                           fontWeight: FontWeight.w500,
//                                           height: MediaQuery.of(context)
//                                                   .size
//                                                   .height *
//                                               .0015,
//                                         ))
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),

//                         SizedBox(
//                           height: MediaQuery.of(context).size.height * .025,
//                         ),
//                         //

//                         Container(
//                           width: MediaQuery.of(context).size.width * 1.0,
//                           child: Padding(
//                             padding: const EdgeInsets.only(right: 16, left: 16),
//                             child: Row(
//                               children: [
//                                 Icon(
//                                   Icons.call,
//                                   color: Color(0xFF6C3428),
//                                   size: 20,
//                                 ),
//                                 Row(
//                                   children: [
//                                     Text("     1092131801   ",
//                                         style: TextStyle(
//                                           color: Color(0xFF6C3428),
//                                           fontSize: fontSize16,
//                                           fontWeight: FontWeight.w500,
//                                           height: MediaQuery.of(context)
//                                                   .size
//                                                   .height *
//                                               .0015,
//                                         ))
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),

//                         SizedBox(
//                           height: MediaQuery.of(context).size.height * .01,
//                         ),
//                         //

//                         Container(
//                           width: MediaQuery.of(context).size.width * 1.0,
//                           child: Padding(
//                             padding: const EdgeInsets.only(right: 16, left: 16),
//                             child: Row(
//                               children: [
//                                 Icon(
//                                   Icons.location_on,
//                                   color: Color(0xFF6C3428),
//                                   size: 20,
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(
//                                       top: 0, right: 16, left: 16, bottom: 0),
//                                   child: Container(
//                                     child: Text(
//                                         "Mansoura, Galaa Street, in front\n of the university",
//                                         style: TextStyle(
//                                           color: Color(0xFF6C3428),
//                                           fontSize: fontSize16,
//                                           fontWeight: FontWeight.w500,
//                                           height: MediaQuery.of(context)
//                                                   .size
//                                                   .height *
//                                               .0015,
//                                         )),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),

//                         SizedBox(
//                           width: MediaQuery.of(context).size.width * 1.0,
//                           height: MediaQuery.of(context).size.height * .025,
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
