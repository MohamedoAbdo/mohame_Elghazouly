import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const base = 'http://127.0.0.1:8000';

class Api {
  Future<dynamic> get({required String url}) async {
    log(url);
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      log(response.body);
      return jsonDecode(response.body);
    } else {
      throw Exception(
          'there is a problam with status code ${response.statusCode}');
    }
  }

  Future<dynamic> post(
      {required String url,
      @required dynamic bady,
      @required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Postman-Token': 'Bearer $token'});
    }
    http.Response response =
        await http.post(Uri.parse(url), body: bady, headers: headers);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          'there is apronlem with status code ${response.statusCode} with body ${response.body}');
    }
  }
}
