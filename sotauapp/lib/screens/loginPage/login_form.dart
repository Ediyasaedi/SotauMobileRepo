import 'package:flutter/material.dart';
import 'package:sotauapp/components/color.dart';
import 'package:sotauapp/screens/mainPage/main_menu.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  late String username;
  late String password;
  bool _secureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset("assets/img/tau_logo_bgtransparent.png"),
              ),
              SizedBox(height: 40.0),
              Container(
                child: Text("Selamat Datang di Aplikasi SOTAU AR"),
              ),
              SizedBox(height: 20.0),
              Container(
                child: Text("Form Login Admin"),
              ),
              SizedBox(height: 40.0),
              Column(
                children: [
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          buildUsername(),
                          SizedBox(height: 10.0),
                          buildPasswordFormField(),
                          SizedBox(height: 10.0),
                        ],
                      )),
                  SizedBox(height: 10.0),
                  MaterialButton(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    height: 52,
                    minWidth: MediaQuery.of(context).size.width,
                    color: bgBlack,
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => MainMenu()));
                    },
                    splashColor: Colors.white,
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  TextFormField buildUsername() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onChanged: (value) {},
      decoration: InputDecoration(
        labelText: "Username",
        labelStyle: TextStyle(fontWeight: FontWeight.w700),
        hintText: "Enter your username",
        hintStyle: TextStyle(fontSize: 10),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: _secureText,
      decoration: InputDecoration(
          labelText: "Password",
          hintText: "Enter your password",
          hintStyle: TextStyle(fontSize: 10),
          border: OutlineInputBorder(),

          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(_secureText ? Icons.visibility_off : Icons.visibility),
          )),
    );
  }
}
