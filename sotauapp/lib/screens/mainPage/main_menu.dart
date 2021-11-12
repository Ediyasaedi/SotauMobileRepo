import 'package:flutter/material.dart';
import 'package:sotauapp/components/color.dart';
import 'package:sotauapp/screens/mainPage/menu_artikel.dart';
import 'package:sotauapp/screens/mainPage/menu_augmented_reality.dart';
import 'package:sotauapp/screens/mainPage/menu_civitas_akademik.dart';
import 'package:sotauapp/screens/mainPage/menu_fasilitas.dart';
import 'package:sotauapp/screens/mainPage/menu_informasi.dart';
import 'package:sotauapp/screens/mainPage/menu_pendaftaran.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int currentIdx = 0;
  final screens = [
    MenuInformasi(),
    MenuArtikel(),
    MenuCivitasAkademik(),
    MenuFasilitas(),
    MenuAugmentedReality(),
    MenuPendaftaran(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIdx],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIdx,
        type: BottomNavigationBarType.fixed,
        backgroundColor: bgBottomNavBar,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        iconSize: 30,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: (index) => setState(() => currentIdx = index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "Informasi"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Artikel"),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), label: "Civitas Akademik"),
          BottomNavigationBarItem(
              icon: Icon(Icons.balcony), label: "Fasilitas"),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_stream), label: "Augmented Reality"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Pendaftaran")
        ],
      ),
    );
  }
}
