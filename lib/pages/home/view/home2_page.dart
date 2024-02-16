import 'package:flutter/material.dart';
import 'package:university_app/helper/app_colors.dart';
import 'package:university_app/helper/app_text_style.dart';
import 'package:university_app/helper/ratio_calculator.dart';
import 'package:university_app/models/categorys/categorys.dart';
import 'package:university_app/models/coursers/coursers.dart';
import 'package:provider/provider.dart';
import 'package:university_app/pages/home/controller/home_controller.dart';
import 'package:university_app/pages/home/controller/state/home_state.dart';
import 'package:university_app/pages/other_page.dart';

class Home2Page extends StatefulWidget {
  const Home2Page({super.key});

  @override
  State<Home2Page> createState() => _Home2PageState();
}

class _Home2PageState extends State<Home2Page> {
  @override
  Widget build(BuildContext context) {
    final RatioCalculator ratioCalculator = RatioCalculator();
    return ChangeNotifierProvider(
      create: (_) => HomeController(const HomeState())..init(),
      child: Scaffold(
        body: SafeArea(
          child: Builder(builder: (contextF) {
            final controller = Provider.of<HomeController>(contextF);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: ratioCalculator.calculateHeight(31),
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
                // Card de Recommended for You:
                Container(
                  margin: EdgeInsets.only(
                      left: ratioCalculator.calculateWidth(25.38)),
                  height: 170,
                  child:
                      controller.state.fetchRecommendedState.when(loading: () {
                    return Center(child: CircularProgressIndicator());
                  }, loaded: (list) {
                    return ListView.builder(
                        itemCount: list.length,
                        scrollDirection: Axis
                            .horizontal, // Esto vuelve la lista para deslizar de forma lateral.
                        itemBuilder: (context, index) {
                          return CardCourse(
                            coursers: list[index],
                            // fatherContext: contextF,
                            // index: index,
                          );
                        });
                  }),
                ),
                SizedBox(
                  height: ratioCalculator.calculateHeight(7.54),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: ratioCalculator.calculateWidth(30)),
                  padding: EdgeInsets.only(
                      bottom: ratioCalculator.calculateHeight(17.42)),
                  child: Text(
                    "Categories",
                    style: AppTextStyle.text16W500TextStyle2,
                  ),
                ),
                // Card de categories:
                Container(
                  margin: EdgeInsets.only(
                      left: ratioCalculator.calculateWidth(25.54)),
                  height: 102.15,
                  child: controller.state.fetchCategorysState.when(loading: () {
                    return Center(child: CircularProgressIndicator());
                  }, loaded: (list) {
                    return ListView.builder(
                        itemCount: list.length,
                        scrollDirection: Axis
                            .horizontal, // Esto vuelve la lista para deslizar de forma lateral.
                        itemBuilder: (context, index) {
                          return CardCategories(
                            categorys: list[index],
                          );
                        });
                  }),
                ),
                SizedBox(
                  height: ratioCalculator.calculateHeight(20.42),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: ratioCalculator.calculateWidth(35)),
                  padding: EdgeInsets.only(
                      bottom: ratioCalculator.calculateHeight(17.42)),
                  child: Text(
                    "Top Courses",
                    style: AppTextStyle.text16W500TextStyle2,
                  ),
                ),
                SizedBox(
                  height: ratioCalculator.calculateHeight(5),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: ratioCalculator.calculateWidth(25.38)),
                  height: 170,
                  child:
                      controller.state.fetchTopCoursersState.when(loading: () {
                    return Center(child: CircularProgressIndicator());
                  }, loaded: (list) {
                    return ListView.builder(
                        itemCount: list.length,
                        scrollDirection: Axis
                            .horizontal, // Esto vuelve la lista para deslizar de forma lateral.
                        itemBuilder: (context, index) {
                          return CardCourse(
                            coursers: list[index],
                            // fatherContext: contextF,
                            // index: index,
                          );
                        });
                  }),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}

// Clase para la Primera Card...
class CardCourse extends StatefulWidget {
  final Coursers coursers;
  // final BuildContext fatherContext;
  // final int index;

  const CardCourse({
    super.key,
    required this.coursers,
  });

  @override
  State<CardCourse> createState() => _CardCourseState();
}

class _CardCourseState extends State<CardCourse> {
  final RatioCalculator ratioCalculator = RatioCalculator();

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: AppColors.textButtonColor,
            ),
            width: ratioCalculator.calculateWidth(169.23),
            height: ratioCalculator.calculateHeight(170.92),
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    navigationToNewPage();
                  },
                  child: Container(
                    margin: EdgeInsets.all(16.92),
                    child: Image.network(
                      widget.coursers.urlImage,
                      height: ratioCalculator.calculateHeight(81.23),
                      width: ratioCalculator.calculateHeight(135.38),
                    ),
                  ),
                ),
                Container(
                  color: AppColors.cardContainer2Color,
                  padding: EdgeInsets.only(
                    left: ratioCalculator.calculateWidth(13.54),
                    right: ratioCalculator.calculateWidth(11.85),
                    top: ratioCalculator.calculateHeight(6.77),
                  ),
                  width: ratioCalculator.calculateWidth(169.23),
                  height: ratioCalculator.calculateHeight(50.85),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: ratioCalculator.calculateWidth(
                                121), // Este es el width que marca cuanto ocupara el texto del overflow antes de aparecer los 3 puntos.
                            child: Text(
                              widget.coursers.title,
                              overflow: TextOverflow
                                  .ellipsis, // Con el overflow le decimos que si el texto es mayor al width de el container donde esta que lo marque con 3 puntos.
                              style: AppTextStyle.text13W500TextStyle,
                            ),
                          ),
                          Text(
                            widget.coursers.duration,
                            style: AppTextStyle.text10W400TextStyle,
                          ),
                        ],
                      ),
                      Spacer(), // Esto empuja el icono de verificado al final de su contenedor.
                      Icon(
                        Icons.verified,
                        color: AppColors.textTitleCardColor,
                        size: 18.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void navigationToNewPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OtherPage(),
      ),
    );
  }
}

// Clase para el Segundo Card...
class CardCategories extends StatefulWidget {
  final Categorys categorys;

  const CardCategories({
    super.key,
    required this.categorys,
  });

  @override
  State<CardCategories> createState() => _CardCategoriesState();
}

class _CardCategoriesState extends State<CardCategories> {
  final RatioCalculator ratioCalculator = RatioCalculator();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Card(
          margin: EdgeInsets.only(right: ratioCalculator.calculateWidth(17.88)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(31.92),
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(31.92),
                  color: AppColors.containerCategoriesColor,
                ),
                width: ratioCalculator.calculateWidth(63.85),
                height: ratioCalculator.calculateHeight(64.27),
                child: Icon(
                  widget.categorys.icon == "IT"
                      ? Icons.computer
                      : widget.categorys.icon == "fitness"
                          ? Icons.health_and_safety
                          : widget.categorys.icon == "office"
                              ? Icons.pages
                              : widget.categorys.icon == "finance"
                                  ? Icons.home
                                  : Icons.access_alarm,
                  color: widget.categorys.icon == "IT"
                      ? AppColors.title1CategoriesColor
                      : widget.categorys.icon == "fitness"
                          ? AppColors.title2CategoriesColor
                          : widget.categorys.icon == "office"
                              ? AppColors.title3CategoriesColor
                              : widget.categorys.icon == "finance"
                                  ? AppColors.title4CategoriesColor
                                  : widget.categorys.icon == "finances"
                                      ? AppColors.title5CategoriesColor
                                      : AppColors.title1CategoriesColor,
                  // Aqui le decimos que si un icono tiene un nombre de icono le ponga un color unico a cada icono.
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: ratioCalculator.calculateWidth(17.88)),
          padding: EdgeInsets.only(top: ratioCalculator.calculateHeight(7.24)),
          child: Text(
            widget.categorys.title,
            textAlign: TextAlign.center,
            style: widget.categorys.title == "IT and\nSoftware"
                ? AppTextStyle.textTitleCategories1
                : widget.categorys.title == "Health and\nFitness"
                    ? AppTextStyle.textTitleCategories2
                    : widget.categorys.title == "Office\nProductivity"
                        ? AppTextStyle.textTitleCategories3
                        : widget.categorys.title == "Finance and\nAccounting"
                            ? AppTextStyle.textTitleCategories4
                            : widget.categorys.title == "Programming\nand Code"
                                ? AppTextStyle.textTitleCategories5
                                : widget.categorys.title == "Photography\nClass"
                                    ? AppTextStyle.textTitleCategories2
                                    : AppTextStyle.textTitleCategories1,
          ),
        ),
      ],
    );
  }
}


// Nota: Tener mucho cuidado con los nombres en JSon al momento de mostrarlos...