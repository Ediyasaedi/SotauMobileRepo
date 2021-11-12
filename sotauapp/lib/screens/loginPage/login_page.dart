import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sotauapp/screens/loginPage/login_form.dart';

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
                      borderRadius: new BorderRadius.circular(5.0)),
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset(
                          "assets/img/google-logo.png",
                          width: 30,
                          height: 30,
                        ),
                        Text(
                          'Masuk Sebagai Mahasiswa',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: MaterialButton(
                      minWidth: 400,
                      color: Colors.lightGreen,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginForm()));
                      },
                      splashColor: Colors.white,
                      child: Text(
                        "Masuk Sebagai Admin",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700),
                      ),
                    )),
              ],
            ))
      ],
    ));
  }
}
