// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:tourism_app/Restaurants/Bazooka.dart';
// import 'package:tourism_app/Restaurants/Carrefour.dart';
// import 'package:tourism_app/Restaurants/Karam%20Al-Sham.dart';
// import 'package:tourism_app/Restaurants/Kunafa%20and%20basbousa.dart';
// import 'package:tourism_app/Restaurants/b%20labn.dart';
// import 'package:tourism_app/features/svscreen/responsive_text.dart';
// import 'package:tourism_app/features/svscreen/login.dart';
// import 'package:tourism_app/features/svscreen/search.dart';
// import 'package:tourism_app/features/svscreen/streo.dart';
// import 'package:tourism_app/generated/l10n.dart';

// class Restaurants extends StatefulWidget {
//   @override
//   _RestaurantsState createState() => _RestaurantsState();
// }

// class _RestaurantsState extends State<Restaurants> {
//   @override
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double fontSize32 = (screenWidth <= 600) ? 32 : 42;
//     double fontSize24 = (screenWidth <= 600) ? 24 : 28;
//     double fontSize16 = (screenWidth <= 600) ? 16 : 22;
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             SizedBox(
//               height: MediaQuery.of(context).size.height * .07,
//             ),
//             Row(
//               children: [
//                 Padding(
//                   padding:
//                       EdgeInsets.only(top: 16, right: 0, left: 16, bottom: 16),
//                   child: Material(
//                     shadowColor: Color(0xffE4D1B9),
//                     child: SizedBox(
//                       height: MediaQuery.of(context).size.height * 0.055,
//                       width: 290,
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Colors.white,
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide(
//                                 color: Color(0xFFBE8C63),
//                               ),
//                               borderRadius: BorderRadius.circular(
//                                 22,
//                               ),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Colors.white,
//                               ),
//                               borderRadius: BorderRadius.circular(
//                                 16,
//                               ),
//                             ),
//                             hintText: 'Search',
//                             hintStyle: TextStyle(color: Color(0xffE4D1B9)),
//                             prefixIconColor: Color(0xffffffff)),
//                       ),
//                     ),
//                   ),
//                 ),
//                 //
//                 MaterialButton(
//                   onPressed: () {},
//                   child: Padding(
//                     padding: const EdgeInsets.all(0),
//                     child: Container(
//                       width: 50,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: Color(0xFF6C3428),
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: Icon(
//                         Icons.search,
//                         color: Color(0xFFFFFFFF),
//                         size: 30,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: MediaQuery.of(context).size.height * .03,
//             ),
//             Row(
//               children: [
//                 Text(
//                   S.of(context).Suggestted,
//                   style: TextStyle(
//                     color: Color(0xff6C3428),
//                     fontSize: fontSize24,
//                     fontWeight: FontWeight.w500,
//                     height: MediaQuery.of(context).size.height * .0017,
//                   ),
//                 ),
//               ],
//             ),

//             //1
//             SizedBox(
//               width: MediaQuery.of(context).size.width * 1.0,
//               height: MediaQuery.of(context).size.height * .0,
//             ),
//             _settingItem(
//               title: "Bazooka",
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Bazooka()));
//               },
//             ),
//             Image.asset('assets/image/Line 9.png',
//                 width: MediaQuery.of(context).size.width * .9),

//             //2

//             _settingItem(
//               title: "Karam Al-Sham",
//               onTap: () {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (context) => Karam()));
//               },
//             ),
//             Image.asset('assets/image/Line 9.png',
//                 width: MediaQuery.of(context).size.width * .9),

//             //3
//             _settingItem(
//               title: "B labn",
//               onTap: () {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (context) => B_labn()));
//               },
//             ),
//             SizedBox(
//               height: MediaQuery.of(context).size.height * .0001,
//             ),
//             Image.asset('assets/image/Line 9.png',
//                 width: MediaQuery.of(context).size.width * .9),

//             //4

//             _settingItem(
//               title: "Kunafa and basbousa",
//               onTap: () {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (context) => Kunafa()));
//               },
//             ),
//             Image.asset('assets/image/Line 9.png',
//                 width: MediaQuery.of(context).size.width * .9),

//             //5
//           ],
//         ),
//       ),
//     );
//   }

//   Container _settingItem({
//     required String title,
//     required VoidCallback onTap,
//     Color? iconColor,
//   }) {
//     return Container(
//       child: ListTile(
//         onTap: onTap,
//         title: Text(title),
//         textColor: Color(0xFFBE8C63),
//         titleTextStyle: TextStyle(
//           fontSize: 16,
//           fontFamily: 'Inter',
//           fontWeight: FontWeight.w500,
//         ),
//         trailing: const Icon(
//           Icons.close,
//           color: Color(0xFFBE8C63),
//         ),
//       ),
//     );
//   }
// }
