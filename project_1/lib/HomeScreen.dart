import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/BROWSE.dart';
import 'package:project_1/Home.dart';
import 'package:project_1/WATCHLIST.dart';
import 'package:project_1/SEARCH.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home-screen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int SelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xFFFFA90A),
          currentIndex: SelectedIndex,
          onTap: (index) {
            SelectedIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              backgroundColor: Color(0xFF1A1A1A),
              icon: Icon(Icons.home),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color(0xFF1A1A1A),
              icon: Icon(Icons.search),
              label: 'SEARCH',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color(0xFF1A1A1A),
              icon: Icon(Icons.movie),
              label: 'BROWSE',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color(0xFF1A1A1A),
              icon: Icon(Icons.bookmarks),
              label: 'WATCHLIST',
            ),
          ],
        ),
        body: taps[SelectedIndex],
      ),
    );
  }

  List<Widget> taps = [
    Home(),
    Search(),
    Browse(),
    WatchList(),
  ];
}
