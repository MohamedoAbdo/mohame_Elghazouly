import 'package:tourism_app/Helper/api.dart';
import 'package:tourism_app/Helper/app_helper.dart';
import 'package:tourism_app/models/home_places_model.dart';

class PlaceDetailsController {
  Future<Place> getPlace(int id) async {
    final response =
        await Api().get(url: "$base/api/place/$id/${AppHelper.local}");
    return Place.fromJson(response['data']);
  }

  Future<PlacesModel> getPopularPlaces() async {
    final response =
        await Api().get(url: "$base/api/places/${AppHelper.local}");
    return PlacesModel.fromJson(response);
  }
}
