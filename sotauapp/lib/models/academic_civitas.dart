import 'package:flutter/material.dart';
import 'package:sotauapp/models/dosen.dart';

class AcademicCivitas {
  final List<Dosen> listDosen;
  final String jurusan;
  final String fakultas;

  AcademicCivitas(
      {required this.listDosen, required this.jurusan, required this.fakultas});
}
