import 'package:flutter/material.dart';
import 'package:sotauapp/components/custom_appbar.dart';

class MenuFasilitas extends StatefulWidget {
  const MenuFasilitas({Key? key}) : super(key: key);

  @override
  _MenuFasilitasState createState() => _MenuFasilitasState();
}

class _MenuFasilitasState extends State<MenuFasilitas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        iconCode: 3,
      ),
      body: Container(
        child: Center(
          child: Text("Menu Fasilitas"),
        ),
      ),
    );
  }
}
