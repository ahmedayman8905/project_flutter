import 'package:project_1/Code%20Reset%20password.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/Email.dart';

class Resetpassword extends StatelessWidget {
  static const String routeName = 'Reset-password';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF7785DB),
        title: Text(
          'Password Reset',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 50),
            child: Text(
              'Forgot your password?!',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF262626),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Container(
              alignment: Alignment.center,
              child: Image.asset('assets/images/Rectangle 704.png')),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Email(),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(CodeResetpassword.routeName);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFF7785DB),
                    borderRadius: BorderRadius.circular(5)),
                height: size.height * 0.058,
                alignment: Alignment.center,
                width: size.width * 0.885,
                child: Text(
                  'Send the code',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
