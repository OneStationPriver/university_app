import 'package:flutter/material.dart';
import 'package:university_app/helper/app_text_style.dart';
import 'package:university_app/helper/ratio_calculator.dart';
import 'package:university_app/pages/page_about.dart';

class ItemPage extends StatefulWidget {
  final String title;
  final String image;
  final String text;
  final Color color;
  const ItemPage({super.key, required this.title, required this.image, required this.text, required this.color});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  final RatioCalculator ratioCalculator = RatioCalculator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding:
                  EdgeInsets.only(top: ratioCalculator.calculateHeight(68)),
              margin: EdgeInsets.only(
                  left: ratioCalculator.calculateWidth(138),
                  right: ratioCalculator.calculateWidth(137)),
              child: Text(
                titulo,
                style: AppTextStyle.text24W300TextStyle,
              ),
            ),
            SizedBox(
              height: ratioCalculator.calculateHeight(70),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: ratioCalculator.calculateWidth(45),
                  right: ratioCalculator.calculateWidth(45)),
              child: Image(
                image: AssetImage("assets/images/img1.png"),
                width: ratioCalculator.calculateWidth(300),
                height: ratioCalculator.calculateHeight(207),
              ),
            ),
            SizedBox(
              height: ratioCalculator.calculateHeight(70),
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
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "Mock University ", style: AppTextStyle.text16W600TextStyle),
                        TextSpan(
                          text:
                              "is one stop platform where user can attend different mock-exams with ease of our mobile and web app. This not just provides the mock- exams, it gives user the better understanding of the topic.",
                          style: AppTextStyle.text16W400TextStyle,
                        ),
                      ],
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
