import 'package:flutter/material.dart';
import 'package:university_app/helper/app_colors.dart';
import 'package:university_app/helper/app_text_style.dart';
import 'package:university_app/helper/ratio_calculator.dart';
import 'package:university_app/pages/item_page.dart';
import 'package:university_app/pages/page_about.dart';
import 'package:university_app/pages/page_about_2.dart';
import 'package:university_app/pages/page_agreement_unread.dart';
import 'package:university_app/pages/page_welcome.dart';

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
      home: Page(),
    );
  }
}

class Page extends StatefulWidget {
  const Page({super.key});

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  final RatioCalculator ratioCalculator = RatioCalculator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: ratioCalculator.calculateHeight(708),
              child: PageView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  ItemPage(
                    title: "Welcome",
                    image: "assets/images/img1.png",
                    text:
                        "is one stop platform where user can attend different mock-exams with ease of our mobile and web app. This not just provides the mock- exams, it gives user the better understanding of the topic.",
                    color: Colors.purple,
                  ),
                  PageAbout(),
                  PageAbout2(),
                  PageAgreementUnread(),
                ],
              ),
            ),
            ButtonBar(
              children: [
                Container(
                  height: ratioCalculator.calculateHeight(60),
                  width: ratioCalculator.calculateWidth(330),
                  margin: EdgeInsets.only(left: 28, right: 32),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.containerButtonColor,
                  ),
                  child: Center(
                    child: Text(
                      "Continuar",
                      style: AppTextStyle.text16W500TextStyle,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
