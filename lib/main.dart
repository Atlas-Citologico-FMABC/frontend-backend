import 'package:atlas_citologico_fmabc/screens/home_page.dart';
import 'package:atlas_citologico_fmabc/screens/diretorios_page.dart';
import 'package:atlas_citologico_fmabc/screens/galeria_page.dart';
import 'package:atlas_citologico_fmabc/screens/login_page.dart';
import 'package:atlas_citologico_fmabc/widgets/navbar.dart';
import 'package:flutter/material.dart';

enum PageType { home, diretorios, galeria, login }

final Color darkBlue = Color(0xff002C53);
const double navHeight = 100;

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
	const MainPage({super.key});

	@override
	State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
	PageType selectedPage = PageType.home;

	Widget getPage(PageType page) {
		switch(page) {
			case PageType.home:
				return HomePage(navHeight: navHeight);
			case PageType.diretorios:
				return DiretoriosPage();
			case PageType.galeria:
				return GaleriaPage();
			case PageType.login:
				return LoginPage();
		}
	}

	void onTapTab(PageType page) {
		setState(() => selectedPage = page);
	}

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			debugShowCheckedModeBanner: false,
      title: 'Atlas de Citologia',
			home: Scaffold(
				appBar: NavBar(height: navHeight, selectedPage: selectedPage, onTapTab: onTapTab),
				body: getPage(selectedPage),
				// body: pages[selectedPage.index],
				backgroundColor: darkBlue,
			),
		);
	}
} 
