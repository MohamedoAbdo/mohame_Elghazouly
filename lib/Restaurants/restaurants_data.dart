import 'package:tourism_app/models/Resturant_model.dart';

final searchKeys = [
  "Restaurant",
  "Food",
  "مطعم",
  "مطاعم",
];
final restaurants = [
  RestaurantModel(
    id: 1,
    image: "assets/image/017.jpg",
    name: "Bazooka",
    album: [
      "assets/image/0171.jpg",
      "assets/image/0172.jpg",
    ],
    description: "bazooka",
    website: "https://www.facebook.com/Bazooka/about",
    phone: "1092131801",
    address: "The stadium is next to EgyptAir",
  ),
  RestaurantModel(
    id: 2,
    image: "assets/image/014.jpg",
    name: "B labn",
    album: [
      "assets/image/0141.jpg",
      "assets/image/0142.jpg",
    ],
    description: "blabn",
    website: "https://www.facebook.com/b labn/about",
    phone: "1092131801",
    address: "The stadium is next to EgyptAir",
  ),
  RestaurantModel(
    id: 3,
    image: "assets/image/016.jpg",
    name: "Carrefour",
    album: [
      "assets/image/0162.jpg",
    ],
    description: "carrefour",
    website: "https://www.facebook.com/Carrefour/about",
    phone: "1092131801",
    address: "The stadium is next to EgyptAir",
  ),
];
