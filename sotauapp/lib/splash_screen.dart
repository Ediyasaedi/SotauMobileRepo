import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sotauapp/screens/loginPage/login_page.dart';
import 'package:sotauapp/size_config.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startSplash();
    SizeConfig();
  }

  startSplash() async {
    var duration = const Duration(seconds: 3);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        return LoginPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: new Image.asset(
            "assets/img/tau_logo_bgwhite.png",
          ),
        ));
  }
}
