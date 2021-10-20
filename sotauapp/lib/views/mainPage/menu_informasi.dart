import 'package:flutter/material.dart';
import 'package:sotauapp/components/custom_appbar.dart';

class MenuInformasi extends StatefulWidget {
  const MenuInformasi({Key? key}) : super(key: key);

  @override
  _MenuInformasiState createState() => _MenuInformasiState();
}

class _MenuInformasiState extends State<MenuInformasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        iconCode: 0,
      ),
      body: Container(
        child: Center(
          child: Text("Menu Informasi"),
        ),
      ),
    );
  }
}
