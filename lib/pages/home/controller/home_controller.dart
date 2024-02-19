import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:university_app/helper/data_test/data_test.dart';
import 'package:university_app/models/categorys/categorys.dart';
import 'package:university_app/models/coursers/coursers.dart';
import 'package:university_app/pages/home/controller/state/home_state.dart';
import 'package:university_app/pages/other_page.dart';
import 'package:university_app/state_notifier.dart';

// para usar el estado debes usar "extends StateNotifer" con "ChangeNotifer" no funciona.
class HomeController extends StateNotifier<HomeState> {
  List<dynamic> listCourser = courser["coursers"];
  List<Coursers> listCourserObject = [];

  List<dynamic> listCategory = category["categorys"];
  List<Categorys> listCategoryObject = [];

  List<Map<String, dynamic>> listCourserDos = courserDos["coursersDos"];
  List<Coursers> listCourser2Object = [];

  HomeController(super._state);

  void init() {
    // primera lista estado loading y loaded
    listCourserObject =
        listCourser.map((json) => Coursers.fromJson(json)).toList();

    Future.delayed(Duration(seconds: 5), () {
      state = state.copyWith(
          fetchRecommendedState:
              FetchRecommendedState.loaded(listCourserObject));
    });
    // segunda lista estado loading y loaded
    listCategoryObject =
        listCategory.map((json) => Categorys.fromJson(json)).toList();

    Future.delayed(Duration(seconds: 5), () {
      state = state.copyWith(
          fetchCategorysState: FetchCategorysState.loaded(listCategoryObject));
    });

    // tercera lista estado loading y loaded
    listCourser2Object =
        listCourserDos.map((json) => Coursers.fromJson(json)).toList();

    Future.delayed(Duration(seconds: 5), () {
      state = state.copyWith(
          fetchTopCoursersState: FetchTopCoursersState.loaded(listCourser2Object));
    });
  }

  void change() {
    ChangeNotifier();
  }
}
