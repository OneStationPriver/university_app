import 'package:flutter/material.dart';
import 'package:university_app/helper/app_colors.dart';
import 'package:university_app/helper/app_text_style.dart';
import 'package:university_app/helper/data_test/data_test.dart';
import 'package:university_app/helper/ratio_calculator.dart';
import 'package:university_app/models/coursers/coursers.dart';
import 'package:university_app/pages/MyApp/view/page.dart';
import 'package:university_app/global/bottom_page.dart';
import 'package:university_app/pages/MyApp/view/widget/item_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final RatioCalculator ratioCalculator = RatioCalculator();
    ratioCalculator.updateRatio(
      context: context,
      figmaWidth: 390,
      figmaHeight: 844,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageInit(),
      theme: ThemeData(useMaterial3: false),
    );
  }
}
