import 'package:flutter/material.dart';

import '../widgets/button.dart';
import '../widgets/input_field.dart';

final Color darkBlue = Color(0xff002C53);
final Color lightGray = Color(0xffEBEBEB);
final Color green = Color(0xff009951);

class LoginTab extends StatelessWidget {
  const LoginTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 1.5,
        decoration: BoxDecoration(
          color: lightGray,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: <Widget>[
                  Text('Email:', style: TextStyle(fontSize: 20)),
                  InputField(
                    labelText: 'Email',
                    width: 500,
                    enabledBorderColor: Colors.black.withAlpha(50),
                    focusedBorderColor: darkBlue,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: <Widget>[
                  Text('Senha:', style: TextStyle(fontSize: 20)),
                  InputField(
                    labelText: 'Senha',
                    width: 500,
                    obscureText: true,
                    enabledBorderColor: Colors.black.withAlpha(50),
                    focusedBorderColor: darkBlue,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(60),
              child: Button(
                text: 'Fazer Login',
                onTap: () {},
                foregroundColor: Colors.white,
                backgroundColor: green,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
