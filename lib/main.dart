import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_moda_app/pages/ana_sayfa.dart';
import 'package:flutter_moda_app/pages/arama_sayfa.dart';
import 'package:flutter_moda_app/pages/profil_sayfa.dart';
import 'package:flutter_moda_app/widgets/drawer_menu.dart';

void main() {
  runApp(const ModaApp());
}

class ModaApp extends StatefulWidget {
  const ModaApp({super.key});

  @override
  State<ModaApp> createState() => _ModaAppState();
}

class _ModaAppState extends State<ModaApp> {
  int _selectedIndex = 0;

  List<Widget> tabItems = [
    const AnaSayfa(),
    const Arama(),
    const Profil(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moda App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: Scaffold(
        drawer: const DrawerMenu(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "outfitly",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 35,
              color: Colors.black87,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.camera_alt),
              onPressed: () {},
              color: Colors.grey,
            ),
          ],
        ),
        body: Center(
          child: tabItems[_selectedIndex],
        ),
        bottomNavigationBar: FlashyTabBar(
          animationCurve: Curves.linear,
          selectedIndex: _selectedIndex,
          iconSize: 30,
          showElevation: false,
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
          }),
          items: [
            FlashyTabBarItem(
              icon: const Icon(
                Icons.home,
                color: Colors.grey,
              ),
              title: const Text('Home'),
            ),
            FlashyTabBarItem(
              icon: const Icon(Icons.search, color: Colors.grey),
              title: const Text('Search'),
            ),
            FlashyTabBarItem(
              icon: const Icon(Icons.person, color: Colors.grey),
              title: const Text('Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
