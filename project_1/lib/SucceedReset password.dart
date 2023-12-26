import 'package:project_1/Password.dart';
import 'package:project_1/congratulations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SucceedResetPassword extends StatelessWidget {
  static const String routeName = 'Succeed-Reset-password';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF7785DB),
        title: Text(
          'Password Reset',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.07,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password Reset',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF262626),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Container(
              alignment: Alignment.center,
              child: Image.asset('assets/images/186 1.png'),
            ),
            SizedBox(height: size.height * 0.015),
            Password(item: 'Enter a new password'),
            SizedBox(height: size.height * 0.02),
            Password(item: 'Confirm the new password'),
            SizedBox(height: size.height * 0.04),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(congratulations.routeName);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF7785DB),
                  borderRadius: BorderRadius.circular(5),
                ),
                alignment: Alignment.center,
                height: size.height * 0.058,
                width: size.width * 0.885,
                child: Text('sure',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
