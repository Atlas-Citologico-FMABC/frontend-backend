import 'package:flutter/material.dart';

Widget InputField({
	required String errorText,
  double width = 400,
  double height = 2,
  double fontSize = 20,
  bool obscureText = false,
  String? labelText,
  Color enabledBorderColor = Colors.black,
  Color focusedBorderColor = Colors.blue,
  double borderRadius = 8,
}) {
  return SizedBox(
    width: width,
    child: TextFormField(
      style: TextStyle(fontSize: fontSize, height: height),
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: enabledBorderColor),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: focusedBorderColor),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        labelText: labelText,
        floatingLabelStyle: TextStyle(color: Colors.green),
        floatingLabelBehavior: FloatingLabelBehavior.never,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorText;
        }
        return null;
      },
    ),
  );
}
