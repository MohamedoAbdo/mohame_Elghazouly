// import 'dart:convert';
// import 'dart:html';
// import 'package:tourism_app/Helper/api.dart';
// import 'package:tourism_app/models/place_model.dart';

// class AllPlaceservice {
//   Future<List<placeMadel>> getAllPlace() async {
//     List<dynamic> data =
//         await Api().get(url: 'http://127.0.0.1:8000/api/places/en');

//     List<placeMadel> productsList = [];
//     for (var i = 0; i < data.length; i++) {
//       productsList.add(
//         placeMadel.fromJson(data[i]),
//       );
//     }
//     return productsList;
//   }
// }
