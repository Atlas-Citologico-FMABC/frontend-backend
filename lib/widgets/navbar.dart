import 'package:atlas_citologico_fmabc/widgets/button.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget NavBar({required double height, required int selectedIndex, required Function(int) onTapTab}) {
	final List<String> labels = ['Home', 'Diretórios', 'Galeria', 'Login'];

	return PreferredSize(
		preferredSize: Size.fromHeight(height),
		child: Padding(
			padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
			child: AppBar(
				titleSpacing: 30,
				shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
				title: Padding(
					padding: EdgeInsets.symmetric(vertical: 10),
					child: Image.asset('assets/images/fmabc.png', height: 50),
				),
				toolbarHeight: height,
				actions: <Widget>[
					for (int i = 0; i < labels.length; i++) 
						Button(
							label: labels[i],
							isSelected: selectedIndex == i,
							onTap: () => onTapTab(i),
						),
				],
			),
		),
	);
}
