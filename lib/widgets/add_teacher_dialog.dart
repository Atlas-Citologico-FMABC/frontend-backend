import 'package:flutter/material.dart';
import 'button.dart';
import 'input_field.dart';

final Color green = Color(0xff009951);

class AddTeacherDialog extends StatefulWidget {
  const AddTeacherDialog({super.key});

  @override
  State<AddTeacherDialog> createState() => _AddTeacherDialogState();
}

class _AddTeacherDialogState extends State<AddTeacherDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 8,
      backgroundColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: SizedBox(
          height: 200,
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 10, left: 20),
                      child: Text('Nome'),
                    ),
                    InputField(errorText: 'Digite um nome'),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, left: 20),
                      child: Text('Email'),
                    ),
                    InputField(errorText: 'Digite um email'),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, left: 20),
                      child: Text('Senha'),
                    ),
                    InputField(errorText: 'Digite uma senha'),
                  ],
                ),
                SizedBox(height: 50),
                Button(
                  text: 'Adicionar professor',
                  onTap: () {},
                  backgroundColor: green,
                  foregroundColor: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
