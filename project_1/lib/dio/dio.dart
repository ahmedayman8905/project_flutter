import 'dart:convert';

import 'package:dio/dio.dart';

class DioFinalHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: "https://api.themoviedb.org/3",
        receiveDataWhenStatusError: true,
        headers: {
          "Content-Type": "application/json",
          "lang": 'en',
          'Authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwNzAyYzM1YmU5NzMyOTkxNDA0NWUwNjkwMjYyOTRlNiIsInN1YiI6IjY1Mzg2ZTE1ZTkzZTk1MDBjN2ZiM2QyZSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.1mSI61G5cp_mQ6QiSK0LUWGbninu3jMhRS3dWoVUsI4',
        },
      ),
    );
  }

  // static Future<Response> postData({
  //   required String method,
  //   required Map<String, dynamic> data,
  //   String lang = 'en',
  //   String? token,
  // }) async {
  //   //adding to header map
  //   //note if it's assignment not add that will cause bad response!
  //   //so use addAll method if you're trying to add a header.
  //   dio.options.headers.addAll(
  //     {
  //       'lang': lang,
  //       'Authorization': token,
  //     },
  //   );
  //
  //   return await dio.post(
  //     method,
  //     data: data,
  //   );
  // }

  static Future<dynamic> getfristData({
    required String endPointName,
      Map<String, dynamic>? data,
      }) async {
    dio.options.headers.addAll({
      'Authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwNzAyYzM1YmU5NzMyOTkxNDA0NWUwNjkwMjYyOTRlNiIsInN1YiI6IjY1Mzg2ZTE1ZTkzZTk1MDBjN2ZiM2QyZSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.1mSI61G5cp_mQ6QiSK0LUWGbninu3jMhRS3dWoVUsI4',
      'lang': 'en'
    });
    try {
      final response = await dio.get(
        endPointName,
        queryParameters: data, // Use queryParameters for GET requests
      );
      if (response.statusCode == 200) {
        print(jsonEncode(response.data));
      } else {
        print(response.statusMessage);
      }
      return response;
    } catch (e) {
      print(e.toString());
      throw e; // rethrow the error if needed
    }
  }
  static Future<dynamic> getTwoData({
    required String endPointName,
    Map<String, dynamic>? data,
  }) async {
    dio.options.headers.addAll({
      'Authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwNzAyYzM1YmU5NzMyOTkxNDA0NWUwNjkwMjYyOTRlNiIsInN1YiI6IjY1Mzg2ZTE1ZTkzZTk1MDBjN2ZiM2QyZSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.1mSI61G5cp_mQ6QiSK0LUWGbninu3jMhRS3dWoVUsI4',
      'lang': 'en'
    });
    try {
      final response = await dio.get(
        endPointName,
        queryParameters: data, // Use queryParameters for GET requests
      );
      if (response.statusCode == 200) {
        print('fdgfdgfdgf');
        print(jsonEncode(response.data));
      } else {
        print(response.statusMessage);
        print('object');
      }
      return response;
    } catch (e) {
      print(e.toString());
      throw e; // rethrow the error if needed
    }
  }
}

  // static Future<Response> putData({
  //   required String method,
  //   required Map<String, dynamic> data,
  //   String lang = 'en',
  //   String? token,
  // }) async {
  //   dio.options.headers.addAll({
  //     'lang': lang,
  //     'Authorization': token,
  //   });
  //
  //   return await dio.put(
  //     method,
  //     data: data,
  //   );
  // }

