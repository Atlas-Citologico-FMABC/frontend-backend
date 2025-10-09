import 'package:atlas_citologico_fmabc/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:atlas_citologico_fmabc/main.dart';

PreferredSizeWidget NavBar({
  required double height,
  required PageType selectedPage,
  required Function(PageType) onTapTab,
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
            isSelected: selectedPage == PageType.home,
            onTap: () => onTapTab(PageType.home),
          ),
          Button(
            label: 'Diretórios',
            isSelected: selectedPage == PageType.diretorios,
            onTap: () => onTapTab(PageType.diretorios),
          ),
          Button(
            label: 'Galeria',
            isSelected: selectedPage == PageType.galeria,
            onTap: () => onTapTab(PageType.galeria),
          ),
          Button(
            label: 'Login',
            isSelected: selectedPage == PageType.login,
            onTap: () => onTapTab(PageType.login),
          ),
        ],
      ),
    ),
  );
}
