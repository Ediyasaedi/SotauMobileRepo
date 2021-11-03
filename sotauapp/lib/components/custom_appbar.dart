import 'package:flutter/material.dart';
import 'package:sotauapp/components/color.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  Size get preferredSize => const Size.fromHeight(60);
  final int iconCode;

  CustomAppBar({this.iconCode = 10});

  @override
  _CustomAppBarState createState() => _CustomAppBarState(this.iconCode);
}

class _CustomAppBarState extends State<CustomAppBar> {
  int iconCode;

  _CustomAppBarState(this.iconCode);

  @override
  Widget build(BuildContext context) {
    double fontSize = 20;
    double marginLeft = 20;
    double marginRight = 20;
    Widget _logoOrLogout(iconCode) {
      switch (iconCode) {
        case 5:
          return Flexible(
            child: Center(
                child: Container(
                    margin: EdgeInsets.only(right: marginRight),
                    child: InkWell(
                        child: Text(
                      "LOGOUT",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )))),
            flex: 1,
          );
        default:
          return Flexible(
            child: Center(
                child: Container(
                    margin: EdgeInsets.only(right: marginRight),
                    child:
                        Image.asset("assets/img/tau_logo_bgtransparent.png"))),
            flex: 1,
          );
      }
    }

    Widget _dinamicTitle(iconCode) {
      switch (iconCode) {
        case 0:
          return Flexible(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: marginLeft),
                    child: Text(
                      "Informasi",
                      style: TextStyle(fontSize: fontSize),
                    ),
                  )
                ],
              ),
              flex: 3);
        case 1:
          return Flexible(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: marginLeft),
                    child: Text(
                      "Artikel",
                      style: TextStyle(fontSize: fontSize),
                    ),
                  )
                ],
              ),
              flex: 3);
        case 2:
          return Flexible(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: marginLeft),
                    child: Text(
                      "Civitas Akademik",
                      style: TextStyle(fontSize: fontSize),
                    ),
                  )
                ],
              ),
              flex: 3);
        case 3:
          return Flexible(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: marginLeft),
                    child: Text(
                      "Fasilitas",
                      style: TextStyle(fontSize: fontSize),
                    ),
                  )
                ],
              ),
              flex: 3);
        case 4:
          return Flexible(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: marginLeft),
                    child: Text(
                      "Augmented Reality",
                      style: TextStyle(fontSize: fontSize),
                    ),
                  )
                ],
              ),
              flex: 3);
        case 5:
          return Flexible(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: marginLeft),
                    child: Text(
                      "Pendaftaran",
                      style: TextStyle(fontSize: fontSize),
                    ),
                  )
                ],
              ),
              flex: 3);
        case 6:
          return Flexible(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: marginLeft),
                    child: Text(
                      "Detail Artikel",
                      style: TextStyle(fontSize: fontSize),
                    ),
                  )
                ],
              ),
              flex: 3);
        default:
          return Flexible(
              child: Row(
                children: [
                  Spacer(
                    flex: 6,
                  )
                ],
              ),
              flex: 3);
      }
    }

    return Scaffold(
      body: SafeArea(
        child: AppBar(
          elevation: 0.0,
          automaticallyImplyLeading: false,
          backgroundColor: bgColor,
          flexibleSpace: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _dinamicTitle(iconCode),
              _logoOrLogout(iconCode)
            ],
          ),
        ),
      ),
    );
  }
}
