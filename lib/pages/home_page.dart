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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        //fixedColor: Colors.purple,
        selectedItemColor: Color.fromRGBO(123, 97, 255, 1),
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.pages), label: "Exams"),
          BottomNavigationBarItem(icon: Icon(Icons.save), label: "Wishits"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), label: "Acounts"),
        ],
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            width: ratioCalculator.calculateWidth(169.23),
            height: ratioCalculator.calculateHeight(170.92),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(16.92),
                  child: Image.network(
                    widget.urlImage,
                    height: ratioCalculator.calculateHeight(81.23),
                    width: ratioCalculator.calculateHeight(135.38),
                  ),
                ),
                Container(
                  color: Color.fromRGBO(25, 38, 63, 0.03),
                  padding: EdgeInsets.only(
                      left: ratioCalculator.calculateWidth(13.54), 
                      top: ratioCalculator.calculateHeight(6.77),),
                  width: ratioCalculator.calculateWidth(169.23),
                  height: ratioCalculator.calculateHeight(50.85),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: widget.titleCourser + "\n",
                          style: TextStyle(
                              fontSize: 13.54,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: widget.duration,
                          style: TextStyle(fontSize: 10.15, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
