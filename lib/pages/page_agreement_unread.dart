import 'package:flutter/material.dart';
import 'package:university_app/helper/app_text_style.dart';
import 'package:university_app/helper/ratio_calculator.dart';

class PageAgreementUnread extends StatefulWidget {
  const PageAgreementUnread({super.key});

  @override
  State<PageAgreementUnread> createState() => _PageAgreementUnreadState();
}

class _PageAgreementUnreadState extends State<PageAgreementUnread> {
  final RatioCalculator ratioCalculator = RatioCalculator();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding:
                  EdgeInsets.only(top: ratioCalculator.calculateHeight(70)),
              margin: EdgeInsets.only(
                  left: ratioCalculator.calculateWidth(71),
                  right: ratioCalculator.calculateWidth(70)),
                child: Text(
                  "Content consent and user agreement",
                  style: AppTextStyle.text24W300TextStyle,
                  textAlign: TextAlign.center,
                ),
            ),
            SizedBox(
              height: ratioCalculator.calculateHeight(38),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: ratioCalculator.calculateWidth(63),
                      right: ratioCalculator.calculateWidth(63.93)),
                  child: Image(
                    image: AssetImage("assets/images/img4.png"),
                    width: ratioCalculator.calculateWidth(263.07),
                    height: ratioCalculator.calculateHeight(198),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ratioCalculator.calculateHeight(38),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: ratioCalculator.calculateWidth(44),
                    right: ratioCalculator.calculateWidth(45),
                  ),
                  width: ratioCalculator.calculateWidth(301),
                  height: ratioCalculator.calculateHeight(120),
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
