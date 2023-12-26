import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Email extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.885,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          label: Container(
            alignment: Alignment.centerLeft,
            width: double.infinity,
            child: Text('E-mail',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color:Color(0xFF888888),
                fontSize: 14,
              ),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius:  BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              color: Color(0xFFCED5E1),
              width: 2,
            ),
          ),
          focusedBorder:  OutlineInputBorder(
            borderRadius:  BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              color: Color(0xFFCED5E1),
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
