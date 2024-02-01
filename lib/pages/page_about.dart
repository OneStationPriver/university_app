import 'package:flutter/material.dart';
import 'package:university_app/helper/app_text_style.dart';
import 'package:university_app/helper/ratio_calculator.dart';

class PageAbout extends StatefulWidget {
  const PageAbout({super.key});

  @override
  State<PageAbout> createState() => _PageAboutState();
}

class _PageAboutState extends State<PageAbout> {
  final RatioCalculator ratioCalculator = RatioCalculator();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(top: ratioCalculator.calculateHeight(70)),
                  margin: EdgeInsets.only(
                      left: ratioCalculator.calculateWidth(159),
                      right: ratioCalculator.calculateWidth(158)),
                  child: Text(
                    "About",
                    style: AppTextStyle.text24W300TextStyle,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ratioCalculator.calculateHeight(50),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: ratioCalculator.calculateWidth(84),
                      right: ratioCalculator.calculateWidth(84)),
                  child: Image(
                    image: AssetImage("assets/images/img2.png"),
                    width: ratioCalculator.calculateWidth(222),
                    height: ratioCalculator.calculateHeight(222),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ratioCalculator.calculateHeight(73),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: ratioCalculator.calculateWidth(44),
                    right: ratioCalculator.calculateWidth(45),
                  ),
                  width: ratioCalculator.calculateWidth(301),
                  height: ratioCalculator.calculateHeight(125),
                  child: Text(
                    "All mock exam contains details explanations of each question, you will have opportunity to view details. You can open test in Learning mode or Exam mode.",
                    style: AppTextStyle.text16W400TextStyle,
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
