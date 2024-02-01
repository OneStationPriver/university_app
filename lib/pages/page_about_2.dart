import 'package:flutter/material.dart';
import 'package:university_app/helper/app_text_style.dart';
import 'package:university_app/helper/ratio_calculator.dart';

class PageAbout2 extends StatefulWidget {
  const PageAbout2({super.key});

  @override
  State<PageAbout2> createState() => _PageAbout2State();
}

class _PageAbout2State extends State<PageAbout2> {
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
              height: ratioCalculator.calculateHeight(68),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: ratioCalculator.calculateWidth(104),
                      right: ratioCalculator.calculateWidth(104.1)),
                  child: Image(
                    image: AssetImage("assets/images/img3.png"),
                    width: ratioCalculator.calculateWidth(181.9),
                    height: ratioCalculator.calculateHeight(191),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ratioCalculator.calculateHeight(86),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: ratioCalculator.calculateWidth(44),
                    right: ratioCalculator.calculateWidth(45),
                  ),
                  width: ratioCalculator.calculateWidth(301),
                  height: ratioCalculator.calculateHeight(144),
                  child: Text(
                    "Learning mode is not time limited and you can view answer immediately and review topic. You can only review topics and correct answer after submission of the test.",
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
