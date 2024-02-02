import 'package:flutter/material.dart';
import 'package:university_app/helper/app_colors.dart';
import 'package:university_app/helper/app_text_style.dart';
import 'package:university_app/helper/data_test/data_test.dart';
import 'package:university_app/helper/ratio_calculator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final RatioCalculator ratioCalculator = RatioCalculator();

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> listCourser = courser["coursers"];

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: ratioCalculator.calculateHeight(74),
                  left: ratioCalculator.calculateWidth(30)),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Mock",
                      style: AppTextStyle.text20W700TextStyle,
                    ),
                    TextSpan(
                      text: " University",
                      style: AppTextStyle.text20W400TextStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: ratioCalculator.calculateHeight(28),
            ),
            Container(
              margin: EdgeInsets.only(
                left: ratioCalculator.calculateWidth(30),
              ),
              child: Text(
                "Recommended for You",
                style: AppTextStyle.text16W500TextStyle2,
              ),
            ),
            SizedBox(
              height: ratioCalculator.calculateHeight(8),
            ),
            Container(
              height: 170,
              child: ListView.builder(
                  itemCount: listCourser.length,
                  itemBuilder: (context, index) {
                    // return Image.network(r[index]);
                    return CardCourse(
                        urlImage: listCourser[index]["url_image"],
                        titleCourser: listCourser[index]["title"],
                        duration: listCourser[index]["duration"],
                        favorite: listCourser[index]["is_favorite"]);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

// child: Text("${listCourser[index]["url_image"]}"));

class CardCourse extends StatefulWidget {
  final String urlImage;
  final String titleCourser;
  final String duration;
  final bool favorite;

  const CardCourse(
      {super.key,
      required this.urlImage,
      required this.titleCourser,
      required this.duration,
      required this.favorite});

  @override
  State<CardCourse> createState() => _CardCourseState();
}

class _CardCourseState extends State<CardCourse> {
    final RatioCalculator ratioCalculator = RatioCalculator();
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.network(
            'https://picsum.photos/250?image=9',
            height: ratioCalculator.calculateHeight(119),
            width: ratioCalculator.calculateHeight(145),
          ),
          Text(
            'Título de la tarjeta',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Lorem ipsum douctor fringilla.',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
