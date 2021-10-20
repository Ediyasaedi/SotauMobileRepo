import 'package:flutter/material.dart';
import 'package:sotauapp/components/custom_appbar.dart';

class MenuPendaftaran extends StatefulWidget {
  const MenuPendaftaran({Key? key}) : super(key: key);

  @override
  _MenuPendaftaranState createState() => _MenuPendaftaranState();
}

class _MenuPendaftaranState extends State<MenuPendaftaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        iconCode: 5,
      ),
      body: Container(
        child: Center(
          child: Text("Menu Pendaftaran"),
        ),
      ),
    );
  }
}
