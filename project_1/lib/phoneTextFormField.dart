import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  PhoneTextFormField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
      width: size.width * 0.685,
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          label: Container(
            alignment: Alignment.centerLeft,
            width: double.infinity,
            child: Text('phone number',
                style: TextStyle(
                    color: Color(0xFF888888),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),topRight: Radius.circular(5)),
            borderSide: BorderSide(
              color: Color(0xFFCED5E1),
              width: 2,
            ),
          ),
          focusedBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
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
