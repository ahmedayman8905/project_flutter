import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemNewReleases extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/d09cbedd39d8c74b576632e50de5c3d3.png'),
          ],
        ),
      ),
    );
  }
}
