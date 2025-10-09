import 'package:atlas_citologico_fmabc/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:atlas_citologico_fmabc/main.dart';

PreferredSizeWidget NavBar({
  required double height,
  required TabType selectedTab,
  required Function(TabType) onTapTab,
}) {
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
          Button(
            label: 'Home',
            isSelected: selectedTab == TabType.home,
            onTap: () => onTapTab(TabType.home),
          ),
          Button(
            label: 'Diretórios',
            isSelected: selectedTab == TabType.diretorios,
            onTap: () => onTapTab(TabType.diretorios),
          ),
          Button(
            label: 'Galeria',
            isSelected: selectedTab == TabType.galeria,
            onTap: () => onTapTab(TabType.galeria),
          ),
          Button(
            label: 'Login',
            isSelected: selectedTab == TabType.login,
            onTap: () => onTapTab(TabType.login),
          ),
        ],
      ),
    ),
  );
}
