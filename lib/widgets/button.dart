import 'package:flutter/material.dart';

Widget Button({required String label, required bool isSelected, required final VoidCallback onTap}) {
	final Color gray = Color(0xFFEBEBEB);
	final isLogin = label.toLowerCase() == 'login';

  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
    child: TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(	
        foregroundColor: isLogin ? Colors.white : Colors.black,
        backgroundColor: isLogin
            ? Colors.blue
            : isSelected
							? gray
							: Colors.transparent,
        textStyle: TextStyle(fontSize: 20),
        padding: isLogin
            ? EdgeInsets.symmetric(horizontal: 60, vertical: 25)
            : EdgeInsets.symmetric(horizontal: 30, vertical: 25),

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: isLogin ? Text('LOGIN') : Text(label),
    ),
  );
}
