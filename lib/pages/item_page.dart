import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:university_app/helper/app_text_style.dart';
import 'package:university_app/helper/data_test/data_test.dart';
import 'package:university_app/helper/ratio_calculator.dart';

class ItemPage extends StatefulWidget {
  final String title;
  final String image;
  String textMarcado;
  String text1;
  final String text;
  bool isBody;

  ItemPage(
      {super.key,
      required this.title,
      required this.image,
      required this.text,
      this.text1 = "",
      this.textMarcado = "",
      this.isBody = false});

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
              margin: EdgeInsets.only(top: ratioCalculator.calculateHeight(70)),
              child: Text(
                widget.title,
                style: AppTextStyle.text24W300TextStyle,
                textAlign: TextAlign.center,
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
                image: AssetImage(widget.image),
                width: ratioCalculator.calculateWidth(300),
                height: ratioCalculator.calculateHeight(207),
              ),
            ),
            SizedBox(
              height: ratioCalculator.calculateHeight(widget.isBody ? 30 : 70),
            ),
            widget.isBody
                ? Container(
                    height: ratioCalculator.calculateHeight(155),
                    margin: EdgeInsets.only(
                        left: ratioCalculator.calculateWidth(44),
                        right: ratioCalculator.calculateWidth(45)),
                    child: RawScrollbar(
                      thumbColor: Colors.purple,
                      radius: Radius.circular(16),
                      thickness: 7,
                      child: SingleChildScrollView(
                        child: Text(widget.text),
                      ),
                    ),
                  )
                : Row(
                    children: [
                      widget.isBody
                          ? Container(
                              margin: EdgeInsets.only(
                                left: ratioCalculator.calculateWidth(44),
                                right: ratioCalculator.calculateWidth(45),
                              ),
                              width: ratioCalculator.calculateWidth(301),
                              height: ratioCalculator.calculateHeight(155),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: widget.textMarcado,
                                        style:
                                            AppTextStyle.text16W600TextStyle),
                                    TextSpan(
                                      text: widget.text,
                                      style: AppTextStyle.text16W400TextStyle,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : Container(
                              margin: EdgeInsets.only(
                                left: ratioCalculator.calculateWidth(44),
                                right: ratioCalculator.calculateWidth(45),
                              ),
                              width: ratioCalculator.calculateWidth(301),
                              height: ratioCalculator.calculateHeight(210),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(widget.text1,
                                      style: AppTextStyle.text16W400TextStyle),
                                  SizedBox(
                                    height: ratioCalculator.calculateHeight(10),
                                  ),
                                  Text(widget.text,
                                      style: AppTextStyle.text16W400TextStyle),
                                ],
                              ),
                            ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
