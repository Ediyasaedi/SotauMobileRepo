import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'assets/img/img_slide_1.png',
  'assets/img/img_slide_2.png',
  'assets/img/img_slide_3.png'
];

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Column(children: [
          Builder(
            builder: (context) {
              final double height = MediaQuery.of(context).size.height;
              return CarouselSlider(
                options: CarouselOptions(
                    height: height,
                    viewportFraction: 1.0,
                    enlargeCenterPage: false,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
                items: imgList
                    .map((item) => Container(
                          child: Center(
                              child: Image.asset(
                            item,
                            fit: BoxFit.cover,
                            height: height,
                          )),
                        ))
                    .toList(),
              );
            },
          ),
        ]),
        Positioned(
          bottom: 20,
          left: 30,
          right: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.map((url) {
              int index = imgList.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Colors.white
                      : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
        ),
        Positioned(
            top: 100,
            left: 30,
            right: 30,
            child: Image.asset('assets/img/tau_logo_bgtransparent.png')),
        Positioned(
            bottom: 100,
            left: 30,
            right: 30,
            child: Column(
              children: [
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0)),
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset(
                        "assets/img/facebook-logo.png",
                        width: 40,
                        height: 40,
                      ),
                      Text(
                        'Sign In with Facebook',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0)),
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset(
                        "assets/img/google-logo.png",
                        width: 30,
                        height: 30,
                      ),
                      Text(
                        'Sign In with Google',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child: MaterialButton(
                      minWidth: 300,
                      color: Colors.lightGreen,
                      onPressed: () {},
                      splashColor: Colors.white,
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700),
                      ),
                    )),
              ],
            )),
        Positioned(
          bottom: 80,
          left: 30,
          right: 30,
          child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, //Center Column contents vertically,
              crossAxisAlignment: CrossAxisAlignment
                  .center, //Center Column contents horizontally,
              children: [
                Text(
                  "Don't have account ? ",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Register Now",
                    style: TextStyle(
                      color: Colors.lightGreen,
                    ),
                  ),
                )
              ]),
        )
      ],
    ));
  }
}
