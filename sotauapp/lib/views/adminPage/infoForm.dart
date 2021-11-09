import 'package:flutter/material.dart';
import 'package:sotauapp/components/color.dart';
import 'package:sotauapp/components/custom_appbar.dart';

class InfoForm extends StatefulWidget {
  const InfoForm({Key? key}) : super(key: key);

  @override
  _InfoFormState createState() => _InfoFormState();
}

class _InfoFormState extends State<InfoForm> {
  String? sejarah = '';
  String? logodescribe = '';
  String? misiTxt = '';
  String? visiTxt = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(iconCode: 0),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 10.0),
                buildSejarahForm(),
                SizedBox(height: 10.0),
                buildLogoDescribeForm(),
                SizedBox(height: 10.0),
                buildVisi(),
                SizedBox(height: 10.0),
                buildMisi(),
                SizedBox(height: 10.0),
                MaterialButton(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  height: 52,
                  minWidth: MediaQuery.of(context).size.width,
                  color: bgBlack,
                  onPressed: () {},
                  splashColor: Colors.white,
                  child: Text(
                    "SUBMIT",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField buildSejarahForm() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => sejarah = newValue,
      onChanged: (value) {},
      decoration: InputDecoration(
        labelText: "Sejarah",
        labelStyle: TextStyle(fontWeight: FontWeight.w700),
        hintText: "Masukan teks disini", hintStyle: TextStyle(fontSize: 10),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(),
      ),
    );
  }

  TextFormField buildLogoDescribeForm() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => logodescribe = newValue,
      onChanged: (value) {},
      decoration: InputDecoration(
        labelText: "Arti Logo TAU",
        labelStyle: TextStyle(fontWeight: FontWeight.w700),
        hintText: "Masukan teks disini", hintStyle: TextStyle(fontSize: 10),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(),
      ),
    );
  }

  TextFormField buildVisi() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => visiTxt = newValue,
      onChanged: (value) {},
      decoration: InputDecoration(
        labelText: "Visi",
        labelStyle: TextStyle(fontWeight: FontWeight.w700),
        hintText: "Masukan teks disini", hintStyle: TextStyle(fontSize: 10),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(),
      ),
    );
  }

  TextFormField buildMisi() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => misiTxt = newValue,
      onChanged: (value) {},
      decoration: InputDecoration(
        labelText: "Misi",
        labelStyle: TextStyle(fontWeight: FontWeight.w700),
        hintText: "Masukan teks disini", hintStyle: TextStyle(fontSize: 10),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(),
      ),
    );
  }
}
