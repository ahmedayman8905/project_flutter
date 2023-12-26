import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListSearch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 13,right: 13),
      color: Color(0xFF121312),
      width: 15,
      height: 100,
      child:  Row(
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Image.asset('assets/images/fd56e79a492733f92951955aa0ae532f.png',
            ),
          ),
          SizedBox(width: size.width *0.02,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Alita Battle Angel',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                ),
              ),
              Text('2019',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text('Rosa Salazar, Christoph Waltz',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  )
              ),
            ],
          ),
        ],
      ),
    );
  }
}
