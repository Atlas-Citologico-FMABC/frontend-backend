import 'package:flutter/material.dart';
import '../widgets/galeria_box.dart';

final Color lightGray = Color(0xffEBEBEB);

class DiretorioTab extends StatelessWidget {
  const DiretorioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            // height: MediaQuery.of(context).size.height - navHeight,
            // color: darkBlue,
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Text(
                  'Atlas de Citologia',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                  ),
                ),
                Divider(color: Colors.white),
                SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: lightGray,
              borderRadius: BorderRadius.only(
                topLeft: Radius.elliptical(700, 70),
                topRight: Radius.elliptical(700, 70),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 30,
                right: 80,
                bottom: 70,
                left: 80,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '<Título do Diretório>',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 50),
                  Row(
                    children: [
                      Expanded(
                        child: Wrap(
                          spacing: 50,
                          runSpacing: 50,
                          children: <Widget>[
                            GaleriaBox(title: 'Image 1'),
                            GaleriaBox(title: 'Image 2'),
                            GaleriaBox(title: 'Image 3'),
                            GaleriaBox(title: 'Image 4'),
                            GaleriaBox(title: 'Image 5'),
                            GaleriaBox(title: 'Image 6'),
                            GaleriaBox(title: 'Image 7'),
                            GaleriaBox(title: 'Image 8'),
                            GaleriaBox(title: 'Image 9'),
                          ],
                        ),
                      ),
                      Container(
                        height: 400,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.all(20),
                        child: SingleChildScrollView(
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
