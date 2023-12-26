import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/ItemWatchList.dart';

class WatchList extends StatelessWidget {
  static const String routeName = 'Watch-List';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF121312),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            'Watchlist',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 2,
                  color: Color(0xFF707070),
                );
              },
              itemBuilder: (context, index) {
                return ItemWatchList();
              },
              itemCount: 30,
            ),
          ),
        ],
      ),
    );
  }
}
