import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:tourism_app/features/svscreen/responsive_text.dart';
import 'package:tourism_app/models/Resturant_model.dart';
import 'package:tourism_app/models/home_places_model.dart';

class AppHelper {
  static String selectedAnswer = '';
  static String userUuid = '';
  static String local = '';
  static List<Place> myFavourit = [];

  static void setSelectedAnswer(String answer) {
    selectedAnswer = answer;
  }

  static void setUserUuid(String uuid) {
    userUuid = uuid;
  }

  static setLocal(Locale locale) {
    local = locale.languageCode;
  }

  static void addMyFavourit(List<Place> list) {
    myFavourit.addAll(list);
  }

  //remove from favourit
  static void removeMyFavourit(Place model) {
    myFavourit.removeWhere((element) => element.id == model.id);
  }

  static bool isINFavourit(Place model) {
    return myFavourit.any((element) => element.id == model.id);
  }
}
