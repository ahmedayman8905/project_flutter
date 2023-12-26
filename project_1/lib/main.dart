import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_1/BROWSE.dart';
import 'package:project_1/Details-film.dart';
import 'package:project_1/Home.dart';
import 'package:project_1/HomeScreen.dart';
import 'package:project_1/My-Bloc.dart';
import 'package:project_1/SEARCH.dart';
import 'package:project_1/WATCHLIST.dart';
import 'package:project_1/dio/dio.dart';
import 'package:project_1/sign%20in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await DioFinalHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SignIn.routeName,
      routes: {
        SignIn.routeName:(context) => SignIn(),
        HomeScreen.routeName: (context) => HomeScreen(),
        Home.routeName: (context) => Home(),
        Search.routeName: (context) => Search(),
        Browse.routeName: (context) => Browse(),
        WatchList.routeName: (context) => WatchList(),
        DetailsFilm.routeName: (context) => DetailsFilm(),
        
      },
      debugShowCheckedModeBanner: false,
      title: 'Movies',
      theme: ThemeData(),
      home: SignIn(),
    );
  }
}
