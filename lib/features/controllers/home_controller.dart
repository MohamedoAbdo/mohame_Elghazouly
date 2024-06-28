import 'package:tourism_app/Helper/api.dart';
import 'package:tourism_app/Helper/app_helper.dart';
import 'package:tourism_app/models/home_places_model.dart';

class HomeController {
  Future<PlacesModel> getCountries() async {
    final response =
        await Api().get(url: "$base/api/countrys/${AppHelper.local}");
    return PlacesModel.fromJson(response);
  }

  Future<PlacesModel> getSuggestionPlaces() async {
    final response = await Api().get(
        url: "$base/api/places/${AppHelper.selectedAnswer}/${AppHelper.local}");
    return PlacesModel.fromJson(response);
  }
}
