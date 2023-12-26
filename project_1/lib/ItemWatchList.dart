import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemWatchList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.topLeft,
          children: [
            Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Image.asset('assets/images/fd56e79a492733f92951955aa0ae532f.png',
              fit: BoxFit.fill,
            ),
          ),
          InkWell(onTap: () {

          },
              child: Image.asset('assets/images/bookmark.png')),
          ],
        ),
        SizedBox(width: size.width * 0.02),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Alit Battle Angel',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
            Text('2019',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 13,
              ),
            ),
            Text('Rose Salazar , Chritoph Waitz',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
