import 'package:flutter/material.dart';
import 'package:sotauapp/components/color.dart';
import 'package:sotauapp/components/custom_appbar.dart';

class ArticleForm extends StatefulWidget {
  const ArticleForm({Key? key}) : super(key: key);

  @override
  _ArticleFormState createState() => _ArticleFormState();
}

class _ArticleFormState extends State<ArticleForm> {
  String? title = '';
  String? image = '';
  String? description = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        iconCode: 1,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              buildTitleField(),
              SizedBox(
                height: 10.0,
              ),
              buildImageField(),
              SizedBox(
                height: 10.0,
              ),
              buildDecriptionField(),
              SizedBox(
                height: 10.0,
              ),
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
    );
  }

  TextFormField buildTitleField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => title = newValue,
      onChanged: (value) {},
      decoration: InputDecoration(
        labelText: "Title",
        labelStyle: TextStyle(fontWeight: FontWeight.w700),
        hintText: "Masukan teks disini", hintStyle: TextStyle(fontSize: 10),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(),
      ),
    );
  }

  TextFormField buildImageField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => image = newValue,
      onChanged: (value) {},
      decoration: InputDecoration(
        labelText: "Image",
        labelStyle: TextStyle(fontWeight: FontWeight.w700),
        hintText: "Masukan teks disini", hintStyle: TextStyle(fontSize: 10),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(),
      ),
    );
  }

  TextFormField buildDecriptionField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => description = newValue,
      onChanged: (value) {},
      decoration: InputDecoration(
        labelText: "Description",
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
