import 'package:project_1/Email.dart';
import 'package:project_1/HomeScreen.dart';
import 'package:project_1/Password.dart';
import 'package:project_1/Reset%20password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  static const String routeName = 'Sign-In';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Sign In',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            )),
        backgroundColor: Color(0xFF7785DB),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: size.height * 0.1),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Hello again!',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF888888),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.035,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 19),
            child: Email(),
          ),
          SizedBox(
            height: size.height * 0.035,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 19),
            child: Password(item: 'Password'),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(Resetpassword.routeName);
              },
              child: Text(
                'Forgot your password?',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF888888),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.035,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(HomeScreen.routeName);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF7785DB),
                  borderRadius: BorderRadius.circular(5),
                ),
                height: size.height * 0.058,
                alignment: Alignment.center,
                width: size.width * 0.885,
                child: Text(
                  'Sign IN',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
