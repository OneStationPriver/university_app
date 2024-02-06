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
    List<Map<String, dynamic>> listCategory = category["categorys"];
    List<Map<String, dynamic>> listCourserDos = courserDos["coursersDos"];

    return Scaffold(
      body: SafeArea(
        child: Column(
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
              margin:
                  EdgeInsets.only(left: ratioCalculator.calculateWidth(25.38)),
              height: 170,
              child: ListView.builder(
                  itemCount: listCourser.length,
                  scrollDirection: Axis
                      .horizontal, // Esto vuelve la lista para deslizar de forma lateral.
                  itemBuilder: (context, index) {
                    return CardCourse(
                      urlImage: listCourser[index]["url_image"],
                      titleCourser: listCourser[index]["title"],
                      duration: listCourser[index]["duration"],
                      favorite: listCourser[index]["is_favorite"],
                    );
                  }),
            ),
            SizedBox(
              height: ratioCalculator.calculateHeight(7.54),
            ),
            Container(
              margin: EdgeInsets.only(left: ratioCalculator.calculateWidth(30)),
              padding: EdgeInsets.only(
                  bottom: ratioCalculator.calculateHeight(17.42)),
              child: Text(
                "Categories",
                style: AppTextStyle.text16W500HomeTextStyle,
              ),
            ),
            // Card de categories:
            Container(
              margin:
                  EdgeInsets.only(left: ratioCalculator.calculateWidth(25.54)),
              height: 102.15, // o utilizar 64.27
              child: ListView.builder(
                  itemCount: listCategory.length,
                  scrollDirection: Axis
                      .horizontal, // Esto vuelve la lista para deslizar de forma lateral.
                  itemBuilder: (context, index) {
                    return CardCategories(
                      urlIcon: listCategory[index]["icon"],
                      titleCategories: listCategory[index]["title"],
                    );
                  }),
            ),
            SizedBox(height: ratioCalculator.calculateHeight(20.42),),
            Container(
              margin: EdgeInsets.only(left: ratioCalculator.calculateWidth(35)),
              padding: EdgeInsets.only(
                  bottom: ratioCalculator.calculateHeight(17.42)),
              child: Text(
                "Top Courses",
                style: AppTextStyle.text16W500HomeTextStyle,
              ),
            ),
            SizedBox(height: ratioCalculator.calculateHeight(5),),
            Container(
              margin:
                  EdgeInsets.only(left: ratioCalculator.calculateWidth(25.38)),
              height: 170,
              child: ListView.builder(
                  itemCount: listCourserDos.length,
                  scrollDirection: Axis
                      .horizontal, // Esto vuelve la lista para deslizar de forma lateral.
                  itemBuilder: (context, index) {
                    return CardCourse(
                      urlImage: listCourserDos[index]["url_image"],
                      titleCourser: listCourserDos[index]["title"],
                      duration: listCourserDos[index]["duration"],
                      favorite: listCourserDos[index]["is_favorite"],
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        //fixedColor: Colors.purple,
        showUnselectedLabels:
            true, // Con esto se muestra el texto de los iconos de lo contrario no se veran.
        selectedItemColor: Color.fromRGBO(123, 97, 255, 1),
        backgroundColor: Color.fromRGBO(0, 0, 0, 0.02),
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        items: <BottomNavigationBarItem>[
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

// Clase para la Primera Card...
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
                Container(
                  margin: EdgeInsets.all(16.92),
                  child: Image.network(
                    widget.urlImage,
                    height: ratioCalculator.calculateHeight(81.23),
                    width: ratioCalculator.calculateHeight(135.38),
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
                              widget.titleCourser,
                              overflow: TextOverflow
                                  .ellipsis, // Con el overflow le decimos que si el texto es mayor al width de el container donde esta que lo marque con 3 puntos.
                              style: AppTextStyle.text13W500TextStyle,
                            ),
                          ),
                          Text(
                            widget.duration,
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
}

// Clase para el Segundo Card...
class CardCategories extends StatefulWidget {
  final String urlIcon;
  final String titleCategories;

  const CardCategories({
    super.key,
    required this.urlIcon,
    required this.titleCategories,
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
                child: 
                 Icon(
                  widget.urlIcon == "IT" ? Icons.computer : widget.urlIcon == "fitness" ? Icons.health_and_safety
                  : widget.urlIcon == "office" ? Icons.pages : widget.urlIcon == "finance" ? Icons.home : Icons.access_alarm,
                  color: widget.urlIcon == "IT" ? AppColors.title1CategoriesColor : widget.urlIcon == "fitness" ? AppColors.title2CategoriesColor
                  : widget.urlIcon == "office" ? AppColors.title3CategoriesColor : widget.urlIcon == "finance" ? AppColors.title4CategoriesColor
                  : widget.urlIcon == "finances" ? AppColors.title5CategoriesColor : AppColors.title1CategoriesColor,
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
            widget.titleCategories,
            textAlign: TextAlign.center,
            style: widget.titleCategories == "IT and\nSoftware" ? AppTextStyle.textTitleCategories1 : widget.titleCategories == "Health and\nFitness" ? AppTextStyle.textTitleCategories2
            : widget.titleCategories == "Office\nProductivity" ? AppTextStyle.textTitleCategories3 : widget.titleCategories == "Finance and\nAccounting" ? AppTextStyle.textTitleCategories4
            : widget.titleCategories == "Programming\nand Code" ? AppTextStyle.textTitleCategories5 : AppTextStyle.textTitleCategories1,
          ),
        ),
      ],
    );
  }
}


// Nota: Tener mucho cuidado con los nombres en JSon al momento de mostrarlos...