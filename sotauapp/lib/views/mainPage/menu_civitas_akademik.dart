import 'package:flutter/material.dart';
import 'package:sotauapp/components/custom_appbar.dart';

class MenuCivitasAkademik extends StatefulWidget {
  const MenuCivitasAkademik({Key? key}) : super(key: key);

  @override
  _MenuCivitasAkademikState createState() => _MenuCivitasAkademikState();
}

class _MenuCivitasAkademikState extends State<MenuCivitasAkademik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        iconCode: 2,
      ),
      body: Container(
        child: Center(
          child: Text("Menu Civitas Akademik"),
        ),
      ),
    );
  }
}
