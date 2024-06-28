// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// import 'package:tourism_app/features/svscreen/Giza.dart';

// class PharaonicVillage extends StatefulWidget {
//   const PharaonicVillage({super.key});

//   @override
//   State<PharaonicVillage> createState() => _PharaonicVillageState();
// }

// class _PharaonicVillageState extends State<PharaonicVillage> {
//   final _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double fontSize32 = (screenWidth <= 600) ? 32 : 42;
//     double fontSize24 = (screenWidth <= 600) ? 24 : 28;
//     double fontSize16 = (screenWidth <= 600) ? 16 : 22;
//     return Scaffold(
//       body: Form(
//         key: _formKey,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Container(
//                 child: Column(
//                   children: [
//                     Stack(children: [
//                       Image.asset(
//                         'assets/image/02.png',
//                       ),
//                       //
//                       Padding(
//                         padding: EdgeInsets.only(
//                             top: MediaQuery.of(context).size.height * 0.07),
//                         child: InkWell(
//                           onTap: () {
//                             // Navigator.push(
//                             //   context,
//                             //   MaterialPageRoute(
//                             //       builder: (context) => PlaceDetailsScreen()),
//                             // );
//                           },
//                           child: const Row(
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
//                                 color: Color(0xFF6C3428),
//                                 size: 30,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       //
//                     ])
//                   ],
//                 ),
//               ),

//               Container(
//                 height: MediaQuery.of(context).size.height * .5,
//                 width: MediaQuery.of(context).size.width * 1.0,
//                 color: Colors.white,
//                 child: Center(
//                   child: Text(
//                     'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor incididunt\nut labore et dolore magna aliqua. Ut enim ad\nminim veniam.\n Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor incididunt\nut labore et dolore magna aliqua. Ut enim ad\nminim veniam.Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna\naliqua. Ut enim ad minim veniam.\nLorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor incididunt\nut labore et dolore magna aliqua. Ut enim ad\nminim veniam .Ut enim ad minim veniam.Lorem\nipsum dolor sit amet, consectetur adipiscing elit .   ',
//                     style: TextStyle(
//                       color: const Color(0xFFBE8C63),
//                       fontSize: fontSize16,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//               ),

//               const Row(
//                 children: [
//                   Text(
//                     '    Some Pics&Video:     ',
//                     style: TextStyle(
//                       color: Color(0xFF6C3428),
//                       fontSize: 24,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * .02,
//               ),
//               Row(
//                 children: [
//                   Row(
//                     children: [
//                       const Row(
//                         children: [
//                           Text(
//                             "  ",
//                           )
//                         ],
//                       ),
//                       InkWell(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const PharaonicVillage()),
//                           );
//                         },
//                         child: Container(
//                             child: Column(children: [
//                           Stack(children: [
//                             Image.asset(
//                               'assets/image/Rectangle 336.png',
//                               height: MediaQuery.of(context).size.height * .25,
//                               width: MediaQuery.of(context).size.width * .45,
//                             ),
//                           ])
//                         ])),
//                       ),
//                     ],
//                   ),
//                   const Row(
//                     children: [
//                       Text(
//                         "      ",
//                       )
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       InkWell(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const PharaonicVillage()),
//                           );
//                         },
//                         child: Container(
//                             child: Column(children: [
//                           Stack(children: [
//                             Image.asset(
//                               'assets/image/Rectangle 336 (1).png',
//                               height: MediaQuery.of(context).size.height * .25,
//                               width: MediaQuery.of(context).size.width * .45,
//                             ),
//                           ])
//                         ])),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * .02,
//               ),
//               //

//               Row(
//                 children: [
//                   Row(
//                     children: [
//                       const Row(
//                         children: [
//                           Text(
//                             "  ",
//                           )
//                         ],
//                       ),
//                       InkWell(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const PharaonicVillage()),
//                           );
//                         },
//                         child: Container(
//                             child: Column(children: [
//                           Stack(children: [
//                             Image.asset(
//                               'assets/image/Rectangle 336 (2).png',
//                               height: MediaQuery.of(context).size.height * .25,
//                               width: MediaQuery.of(context).size.width * .45,
//                             ),
//                           ])
//                         ])),
//                       ),
//                     ],
//                   ),
//                   const Row(
//                     children: [
//                       Text(
//                         "      ",
//                       )
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       InkWell(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const PharaonicVillage()),
//                           );
//                         },
//                         child: Container(
//                           child: Column(
//                             children: [
//                               Stack(children: [
//                                 Image.asset(
//                                   'assets/image/Rectangle 336 (3).png',
//                                   height:
//                                       MediaQuery.of(context).size.height * .25,
//                                   width:
//                                       MediaQuery.of(context).size.width * .45,
//                                 ),
//                               ])
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 width: MediaQuery.of(context).size.width * 1,
//                 height: MediaQuery.of(context).size.height * .02,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
