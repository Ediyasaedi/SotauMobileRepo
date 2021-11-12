import 'package:flutter/material.dart';
import 'package:sotauapp/components/color.dart';
import 'package:sotauapp/components/custom_appbar.dart';

class CivitasAcademicForm extends StatefulWidget {
  const CivitasAcademicForm({Key? key}) : super(key: key);

  @override
  _CivitasAcademicFormState createState() => _CivitasAcademicFormState();
}

class _CivitasAcademicFormState extends State<CivitasAcademicForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        iconCode: 2,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 10.0),
                buildDosenList(),
                SizedBox(height: 10.0),
                buildJurusan(),
                SizedBox(height: 10.0),
                buildFakultasField(),
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

  TextFormField buildDosenList() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onChanged: (value) {},
      decoration: InputDecoration(
        labelText: "Dosen",
        labelStyle: TextStyle(fontWeight: FontWeight.w700),
        hintText: "Masukan teks disini", hintStyle: TextStyle(fontSize: 10),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(),
      ),
    );
  }

  TextFormField buildJurusan() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onChanged: (value) {},
      decoration: InputDecoration(
        labelText: "Jurusan",
        labelStyle: TextStyle(fontWeight: FontWeight.w700),
        hintText: "Masukan teks disini", hintStyle: TextStyle(fontSize: 10),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(),
      ),
    );
  }

  TextFormField buildFakultasField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onChanged: (value) {},
      decoration: InputDecoration(
        labelText: "Fakultas",
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
