import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:tourism_app/Helper/api.dart';
import 'package:tourism_app/models/refresh_model.dart';

class Refresh {
  final Dio dio;

  Refresh(this.dio);
  Future<RefreshMadel?> refresh({
    required String name,
    required String email,
    required dynamic password,
    required int phone,
  }) async {
    try {
      Response response = await dio.get(
          'http://127.0.0.1:8000/api/auth/register?name=$name&email=$email&password=$password&phone=$phone');
      RefreshMadel refreshMadel = RefreshMadel.fromJson(response.data);

      return refreshMadel;
    } on DioException catch (e) {
      return null;
    }
  }
}

//
class LogUp {
  void logup({
    required String name,
    required String email,
    required dynamic password,
    required dynamic phone,
  }) async {
    Response response =
        await Api().post(url: 'http://127.0.0.1:8000/api/auth/register', bady: {
      'name': name,
      'email': email,
      'password': password,
      'phone': phone,
    });
    var responseBody = jsonDecode(response.data);
  }
}
