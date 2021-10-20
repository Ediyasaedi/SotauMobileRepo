import 'package:flutter/material.dart';
import 'package:sotauapp/components/custom_appbar.dart';

class MenuArtikel extends StatefulWidget {
  const MenuArtikel({Key? key}) : super(key: key);

  @override
  _MenuArtikelState createState() => _MenuArtikelState();
}

class _MenuArtikelState extends State<MenuArtikel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        iconCode: 1,
      ),
      body: Container(
        child: Center(
          child: Text("Menu Artikel"),
        ),
      ),
    );
  }
}
