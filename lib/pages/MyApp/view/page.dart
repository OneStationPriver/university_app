import 'package:flutter/material.dart';
import 'package:university_app/helper/app_colors.dart';
import 'package:university_app/helper/app_text_style.dart';
import 'package:university_app/helper/data_test/data_test.dart';
import 'package:university_app/helper/ratio_calculator.dart';
import 'package:university_app/models/coursers/coursers.dart';
import 'package:university_app/global/bottom_page.dart';
import 'package:university_app/pages/MyApp/view/widget/item_page.dart';

class PageInit extends StatefulWidget {
  const PageInit({super.key});

  @override
  State<PageInit> createState() => _PageInitState();
}

class _PageInitState extends State<PageInit> {
  final RatioCalculator ratioCalculator = RatioCalculator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: ratioCalculator.calculateHeight(708),
              child: PageView(
                physics:
                    BouncingScrollPhysics(), // Genera un efecto de rebote al llegar al final de la lista.
                children: <Widget>[
                  ItemPage(
                    title: "Welcome",
                    image: "assets/images/img1.png",
                    textMarcado: "Mock University ",
                    text:
                        "is one stop platform where user can attend different mock-exams with ease of our mobile and web app. This not just provides the mock- exams, it gives user the better understanding of the topic.",
                  ),
                  ItemPage(
                    title: "About",
                    image: "assets/images/img2.png",
                    text:
                        "All mock exam contains details explanations of each question, you will have opportunity to view details. You can open test in Learning mode or Exam mode.",
                  ),
                  ItemPage(
                    title: "About",
                    image: "assets/images/img3.png",
                    text:
                        "Learning mode is not time limited and you can view answer immediately and review topic. You can only review topics and correct answer after submission of the test.",
                  ),
                  ItemPage(
                    title: "Content consent and user agreement",
                    image: "assets/images/img4.png",
                    isBody: true,
                    text:
                        "All mock exam contains details explanations of each question, you will have opportunity to view details. You can open test in Learning mode or Exam mode.All mock exam contains details explanations of each question, you will have opportunity to view detailsAll mock exam contains details explanations of each question, you will have opportunity to view detailsAll mock exam contains details explanations of each question, you will have opportunity to view detailsAll mock exam contains details explanations of each question, you will have opportunity to view detailsAll mock exam contains details explanations of each question, you will have opportunity to view details",
                  ),
                  ItemPage(
                    title: "Congratulations!",
                    image: "assets/images/img5.png",
                    isBody: false,
                    text1:
                        "You have reached the end of our introduction. We are excited to enroll you to our online Mock University.Thank you for choosing us and “Happy Mocking” !",
                    text: "Best Wishes,\nMock University",
                  ),
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
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttonColor,
                    ),
                    child: Center(
                      child: Text(
                        "Continuar",
                        style: AppTextStyle.text16W500TextStyle,
                      ),
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
