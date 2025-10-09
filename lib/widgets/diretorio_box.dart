import 'package:flutter/material.dart';

Widget DiretorioBox({required String title}) {
	return Container(
		width: 300,
		height: 170,
		decoration: BoxDecoration(
			color: Colors.white,
			border: Border.all(color: Colors.green, width: 5),
			borderRadius: BorderRadiusGeometry.circular(8),
		),
		child: Padding(
			padding: const EdgeInsets.all(8.0),
			child: Align(
				alignment: Alignment.bottomLeft,
				child: Text(title),
			),
		),
	);
}
