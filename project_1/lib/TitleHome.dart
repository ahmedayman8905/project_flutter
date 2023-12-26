import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/Details-film.dart';

class TitleHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Container(
                color: Color(0xFF121312),
                child: Image.asset('f1.png'),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(DetailsFilm.routeName);
                },
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                  child: Image.asset('assets/images/Image.png'),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmark,
                    color: Color(0xFF514F4F),
                    size: 40,
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
