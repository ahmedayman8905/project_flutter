import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/model/TowBrowseResponse.dart';

class ItemBrowse extends StatelessWidget {
  Genres genres;
  ItemBrowse({required this.genres});
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/0e34a5e080e8c915030603ddcdb4eeba.png'),
              Padding(
                padding: const EdgeInsets.only(
                    top: 36, left: 56, right: 56, bottom: 33),
                child: Text(
                  '${genres.name}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
