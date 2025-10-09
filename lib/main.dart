import 'package:atlas_citologico_fmabc/screens/home_page.dart';
import 'package:atlas_citologico_fmabc/screens/diretorios_page.dart';
import 'package:atlas_citologico_fmabc/screens/galeria_page.dart';
import 'package:atlas_citologico_fmabc/screens/login_page.dart';
import 'package:atlas_citologico_fmabc/widgets/navbar.dart';
import 'package:flutter/material.dart';

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
	int selectedIndex = 0;
	final List<Widget> pages = const [
		HomePage(navHeight: navHeight),
		DiretoriosPage(),
		GaleriaPage(),
		LoginPage(),
	];

	void onTapTab(int index) {
		setState(() => selectedIndex = index);
	}

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			debugShowCheckedModeBanner: false,
      title: 'Atlas de Citologia',
			home: Scaffold(
				appBar: NavBar(height: navHeight, selectedIndex: selectedIndex, onTapTab: onTapTab),
				body: pages[selectedIndex],
				backgroundColor: darkBlue,
			),
		);
	}
} 
