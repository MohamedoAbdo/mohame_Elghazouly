import 'package:tourism_app/Helper/api.dart';
import 'package:tourism_app/Helper/app_helper.dart';
import 'package:tourism_app/models/home_places_model.dart';
import 'package:tourism_app/models/qr_data_model.dart';

class QrController {
  Future<QrData> getData(String id) async {
    final response = await Api().get(url: "$base/api/artifacts/$id");
    return QrData.fromJson(response['data']);
  }
}
