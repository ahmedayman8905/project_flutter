import 'package:project_1/CodeTextFormField.dart';
import 'package:project_1/SucceedReset%20password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CodeResetpassword extends StatelessWidget {
  static const String routeName = 'Code-Reset-password';
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
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 20),
            child: Row(
              children: [
                CodeTextFormField(),
                SizedBox(width: size.width * 0.05),
                CodeTextFormField(),
                SizedBox(width: size.width * 0.05),
                CodeTextFormField(),
                SizedBox(width: size.width * 0.05),
                CodeTextFormField(),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.07),
          Container(
            alignment: Alignment.center,
            child: Text(
              '00:55',
              style: TextStyle(
                color: Color(0xFF888888),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 10, right: 40),
            child: Row(children: [
              Text('You did not receive the code?'),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Resend the code',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF7785DB)),
                ),
              ),
            ]),
          ),
          SizedBox(height: size.height * 0.04),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(SucceedResetPassword.routeName);
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFF7785DB),
                borderRadius: BorderRadius.circular(5),
              ),
              width: size.width * 0.885,
              height: size.height * 0.058,
              child: Text(
                'Code verification',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
