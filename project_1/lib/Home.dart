import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/ItemNewReleases.dart';
import 'package:project_1/ItemRecomended.dart';
import 'package:project_1/TitleHome.dart';

class Home extends StatelessWidget {
  static const String routeName = 'home';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: Color(0xFF121312),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return TitleHome();
              },
              itemCount: 50, //
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Container(
            color: Color(0xFF707070),
            width: double.infinity,
            height: 45,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                'New Releases',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
            color: Color(0xFF707070),
            width: double.infinity,
            height: size.height * 0.16,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ItemNewReleases();
              },
              itemCount: 20,
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Container(
            color: Color(0xFF707070),
            width: double.infinity,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                'Recomended',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
            color: Color(0xFF707070),
            width: double.infinity,
            height: size.height * 0.29,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ItemRecomended();
              },
              itemCount: 20,
            ),
          ),
          SizedBox(height: size.height * 0.02),
        ],
      ),
    );
  }
}
