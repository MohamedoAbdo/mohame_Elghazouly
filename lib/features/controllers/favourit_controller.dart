import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tourism_app/Helper/app_helper.dart';
import 'package:tourism_app/models/Resturant_model.dart';
import 'package:tourism_app/models/home_places_model.dart';

class FavouritController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  addToFavourit({required Place model}) async {
    try {
      final doc = await firestore
          .collection("favourit")
          .doc()
          .set({...model.toJson(), "uuid": AppHelper.userUuid});

      AppHelper.addMyFavourit([model]);
      return true;
    } catch (e) {
      return false;
    }
  }

  removeFromFavourit({required Place model}) async {
    try {
      final doc = await firestore
          .collection("favourit")
          .where("id", isEqualTo: model.id)
          .where("uuid", isEqualTo: AppHelper.userUuid)
          .get();
      await doc.docs.first.reference.delete();
      AppHelper.removeMyFavourit(model);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<List<Place>> getFavourit() async {
    final response = await firestore
        .collection("favourit")
        .where("uuid", isEqualTo: AppHelper.userUuid)
        .get();
    final data = response.docs.map((e) => Place.fromJson(e.data())).toList();

    AppHelper.addMyFavourit(data);
    return data;
  }
}
