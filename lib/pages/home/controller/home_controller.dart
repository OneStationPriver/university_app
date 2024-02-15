import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:university_app/helper/data_test/data_test.dart';
import 'package:university_app/models/categorys/categorys.dart';
import 'package:university_app/models/coursers/coursers.dart';

class HomeController extends ChangeNotifier {
  List<dynamic> listCourser = courser["coursers"];
  List<Coursers> listCourserObject = [];

  List<dynamic> listCategory = category["categorys"];
  List<Categorys> listCategoryObject = [];

  List<Map<String, dynamic>> listCourserDos = courserDos["coursersDos"];
  List<Coursers> listCourser2Object = [];

  void init() {
    listCourserObject =
        listCourser.map((json) => Coursers.fromJson(json)).toList();

    listCategoryObject =
        listCategory.map((json) => Categorys.fromJson(json)).toList();

    listCourser2Object =
        listCourserDos.map((json) => Coursers.fromJson(json)).toList();
  }

  void change() {
    ChangeNotifier();
  }
}
