import 'package:flutter/material.dart';
import 'package:university_app/helper/app_colors.dart';
import 'package:university_app/helper/app_text_style.dart';
import 'package:university_app/helper/ratio_calculator.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final RatioCalculator ratioCalculator = RatioCalculator();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Aqui centro el texto
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: ratioCalculator.calculateHeight(19),
                  ),
                  child: Text(
                    "Mock ",
                    style: AppTextStyle.text20W700TextStyle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: ratioCalculator.calculateHeight(19),
                  ),
                  child: Text(
                    "University",
                    style: AppTextStyle.text20W400TextStyle,
                  ),
                ),
              ],
            ),
            Container(
              width: ratioCalculator.calculateWidth(83.2),
              height: ratioCalculator.calculateHeight(83.2),
              margin: EdgeInsets.only(
                top: ratioCalculator.calculateHeight(30),
                left: ratioCalculator.calculateWidth(152.92),
                right: ratioCalculator.calculateWidth(153.88),
                bottom: ratioCalculator.calculateHeight(23.28),
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 170, 103, 182),
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(66.56),
                color: Colors.blue,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(66.56),
                child: Image.network(
                  "https://s3-alpha-sig.figma.com/img/a56f/df58/47bb24ba0c25cc5f5e61b3f9cbf9e0cf?Expires=1708300800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=cX3HgCdYHz7bBRiujD9QDqehvd5iQn0acU7qye7DlG-OpWlxy1GFg9qhGHTwa7J7QO2eppSfYWkFZ5vv2aplzsfsEFCr5ihJ1ceN~bBLgyTbwmpfpcJzVPOPSr0l97zutfDwp2jLWqDinU0ZwQqoB2il6SkKqYSRw5jiBC08mNabAFO2w77RX1T2Zn4kogH9GVAVtgtjDWHpSMqk0Me3HYds-pMjL9OX5LA7Gowuci6G3PdFqChKIU8i6vX1luHxF7xuKFHBaQ-7wgEWISdkcX249CccEG9lWlEVyLiN7XIsT-xvr-~nlyamgMDbrL1e6tBJWMx6LuHNF3GRhyYYfw__",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: ratioCalculator.calculateWidth(340.08),
              height: ratioCalculator.calculateHeight(228.04),
              decoration: BoxDecoration(
                boxShadow: [ // debe ir en lista
                  BoxShadow( // para dar sombra a el contenedor 
                    color: Color.fromRGBO(0, 0, 0, 0.02), // color de la sombra
                    spreadRadius: 5.0, // Difuminación de la sombra
                    blurRadius: 7.0, // Radio de la sombra
                    offset: Offset(0.0, 2.0), // Desplazamiento de la sombra
                  )
                ],
                borderRadius: BorderRadius.circular(8),
                color: AppColors.fondoCardWishlistColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
