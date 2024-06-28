import 'package:dio/dio.dart';
import 'package:tourism_app/models/refresh_model.dart';

class Refresh {
  final Dio dio;

  Refresh({required this.dio});
  Future<RefreshMadel?> refresh({
    required String email2,
    required int password2,
    required int phone,
  }) async {
    try {
      Response response = await dio.get(
          'http://127.0.0.1:8000/api/auth/login?email=$email2&password=$password2');
      RefreshMadel refreshMadel = RefreshMadel.fromJson(response.data);

      return refreshMadel;
    } on DioException catch (e) {
      return null;
    }
  }
}
