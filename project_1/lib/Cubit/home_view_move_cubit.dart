import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:project_1/dio/dio.dart';
import 'package:project_1/model/BrowseResponse.dart';
// ignore: depend_on_referenced_packages
import 'package:project_1/model/TowBrowseResponse.dart';
import '../dio/const.dart';
import 'home_view_move_state.dart';

class HomeViewMoveCubit extends Cubit<HomeViewMoveState> {
  HomeViewMoveCubit() : super(BrowseInitial());
  static HomeViewMoveCubit get(context) => BlocProvider.of(context);

  void getBrowse({required int page}) {
    emit(BrowseLoading());
    DioFinalHelper.getfristData(
      endPointName: Bropse(page),
    ).then((value) {
      emit(BrowseSucees(BrowseResponse.fromJson(value.data)));
    }).catchError((e) {
      print(e.toString());
      emit(BrowseError());
    });
  }

  void getTwoBrowse() async {
    try {
      var headers = {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwNzAyYzM1YmU5NzMyOTkxNDA0NWUwNjkwMjYyOTRlNiIsInN1YiI6IjY1Mzg2ZTE1ZTkzZTk1MDBjN2ZiM2QyZSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.1mSI61G5cp_mQ6QiSK0LUWGbninu3jMhRS3dWoVUsI4',
        'accept': 'application/json'
      };
      var dio = Dio();
      var response = await dio.request(
        'https://api.themoviedb.org/3/genre/movie/list?api_key=0702c35be97329914045e069026294e6',
        options: Options(
          method: 'GET',
          headers: headers,
        ),
      );

      emit(TwoBrowseLoading());

      if (response.statusCode == 200) {
        emit(TwoBrowseSucees(TowBrowseResponse.fromJson(response.data)));
        print(json.encode(response.data));
      } else {
        emit(TwoBrowseError());
        print(response.statusMessage);
      }
    } catch (e) {
      print('Error: $e');
      emit(TwoBrowseError());
    }
  }
}
