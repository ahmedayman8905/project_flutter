import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/ItemMoreLikeThis.dart';

class DetailsFilm extends StatelessWidget {
  static const String routeName = 'Details-Film';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1E1D),
        title: Text(
          'Dora and the lost city of gold',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/images/Image().png'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Dora and the lost city of gold',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '2019 PG-13 2h 7m',
              style: TextStyle(
                color: Color(0xFFB5B4B4),
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Row(
            children: [
              Stack(
                children: [
                  Container(
                      alignment: Alignment.topLeft,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.asset('assets/images/f1.png')),
                  Icon(
                    Icons.bookmark,
                    color: Color(0xFF514F4F),
                    size: 45,
                  ),
                ],
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                children: [
                  Text(
                    'Having spent most of her life\n'
                    'exploring the jungle, nothing could\n'
                    'prepare Dora for her most dangerous\n'
                    'adventure yet — high school.',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Color(0xFFCBCBCB)),
                  ),
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(12),
            color: Color(0xFF282A28),
            child: Text(
              'More Like This',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ItemMoreLikeThis();
              },
              itemCount: 50,
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
