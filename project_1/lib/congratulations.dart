// ignore: unused_import
import 'package:project_1/Home%20page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/Home.dart';

class congratulations extends StatelessWidget {
  static const String routeName = 'congratulations';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF7785DB),
        centerTitle: true,
        title: Text(
          'Password Reset',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.07),
            Image.asset('assets/images/286 1.png'),
            SizedBox(height: size.height * 0.04),
            Text(
              'congratulations',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF262626),
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              'The new password has been set successfully',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF262626),
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: size.height * 0.06),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(Home.routeName);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF7785DB),
                  borderRadius: BorderRadius.circular(5),
                ),
                alignment: Alignment.center,
                width: size.width * 0.885,
                height: size.height * 0.058,
                child: Text(
                  'start again',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
