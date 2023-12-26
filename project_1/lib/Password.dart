import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  String item;
  Password({required this.item});

  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.centerLeft,
      width: size.width * 0.885,
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: _obscureText,
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: _togglePasswordVisibility,
            child: ImageIcon(
              AssetImage(
                  _obscureText ?"assets/images/Vector.png" : "assets/images/Vector.png",
              ),
            ),
          ),
          labelText: widget.item,
          labelStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xFF888888),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              color: Color(0xFFCED5E1),
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
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