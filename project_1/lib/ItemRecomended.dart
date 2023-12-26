import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemRecomended extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Card(
        color: Color(0xFF343534),
        elevation: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/d09cbedd39d8c74b576632e50de5c3d3.png'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.star,
                    color: Colors.amber,
                  ),
                  SizedBox(width: size.width * 0.015),
                  Text('7.7',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Deadpool 2',
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('2018 R 1h 59m',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 9,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
