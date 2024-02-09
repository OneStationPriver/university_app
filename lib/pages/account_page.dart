import 'package:flutter/material.dart';
import 'package:university_app/helper/app_colors.dart';
import 'package:university_app/helper/app_text_style.dart';
import 'package:university_app/helper/data_test/data_test.dart';
import 'package:university_app/helper/ratio_calculator.dart';
import 'package:university_app/models/accounts/accounts.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final RatioCalculator ratioCalculator = RatioCalculator();

  @override
  Widget build(BuildContext context) {
    Accounts myAccount = Accounts.fromJson(account);

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
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
                color: Colors.purple,
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
              margin: EdgeInsets.only(
                left: ratioCalculator.calculateWidth(25),
                right: ratioCalculator.calculateWidth(24.92),
              ),
              // height: 500,
              child: CardAccount(accounts: myAccount),
            ),
            SizedBox(
              height: ratioCalculator.calculateHeight(23.68),
            ),
            Container(
              margin: EdgeInsets.only(
                left: ratioCalculator.calculateWidth(25),
                right: ratioCalculator.calculateWidth(24.92),
              ),
              // height: 500,
              child: CardAccountDos(accounts: myAccount),
            ),
            SizedBox(
              height: ratioCalculator.calculateHeight(18),
            ),
            ButtonBar(
              buttonPadding: EdgeInsets.only(
                  left: ratioCalculator.calculateWidth(5)), // Padding del boton
              children: [
                Container(
                  margin: EdgeInsets.only(
                    right: ratioCalculator.calculateWidth(48),
                    left: ratioCalculator.calculateWidth(41),
                  ),
                  height: ratioCalculator.calculateHeight(48),
                  width: ratioCalculator.calculateWidth(301),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.56),
                    color: AppColors.containerButtonColor,
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.botonCardWishlistColor,
                    ),
                    child: Center(
                      child: Text(
                        "Edit",
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

class CardAccount extends StatefulWidget {
  final Accounts accounts;

  const CardAccount({super.key, required this.accounts});

  @override
  State<CardAccount> createState() => _CardAccountState();
}

class _CardAccountState extends State<CardAccount> {
  final RatioCalculator ratioCalculator = RatioCalculator();
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 10,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        margin: EdgeInsets.only(
          left: ratioCalculator.calculateWidth(16),
          right: ratioCalculator.calculateWidth(32.64),
          bottom: ratioCalculator.calculateHeight(30),
          top: ratioCalculator.calculateHeight(12),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                bottom: ratioCalculator.calculateHeight(36),
              ),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      "Personal Info",
                      style: AppTextStyle.text16W800TextStyle,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: ratioCalculator.calculateHeight(36),
                left: ratioCalculator.calculateWidth(16),
              ),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      "Your name",
                      style: AppTextStyle.text14W500TextStyle,
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Text(
                      widget.accounts.yourName,
                      style: AppTextStyle.textDos14W500TextStyle,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: ratioCalculator.calculateHeight(36),
                left: ratioCalculator.calculateWidth(16),
              ),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      "Education Level",
                      style: AppTextStyle.text14W500TextStyle,
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Text(
                      widget.accounts.educationLevel,
                      style: AppTextStyle.textDos14W500TextStyle,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: ratioCalculator.calculateWidth(16),
                  ),
                  child: Text(
                    "Address",
                    style: AppTextStyle.text14W500TextStyle,
                  ),
                ),
                Spacer(),
                Container(
                  child: Text(
                    widget.accounts.address,
                    style: AppTextStyle.textDos14W500TextStyle,
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

class CardAccountDos extends StatefulWidget {
  final Accounts accounts;

  const CardAccountDos({super.key, required this.accounts});

  @override
  State<CardAccountDos> createState() => _CardAccountDosState();
}

class _CardAccountDosState extends State<CardAccountDos> {
  final RatioCalculator ratioCalculator = RatioCalculator();
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 10,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        margin: EdgeInsets.only(
          left: ratioCalculator.calculateWidth(16),
          right: ratioCalculator.calculateWidth(32.64),
          bottom: ratioCalculator.calculateHeight(30),
          top: ratioCalculator.calculateHeight(12),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                bottom: ratioCalculator.calculateHeight(36),
              ),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      "Contact Info",
                      style: AppTextStyle.text16W800TextStyle,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: ratioCalculator.calculateHeight(36),
                left: ratioCalculator.calculateWidth(16),
              ),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      "Phone number",
                      style: AppTextStyle.text14W500TextStyle,
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Text(
                      widget.accounts.phoneNumber,
                      style: AppTextStyle.textDos14W500TextStyle,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: ratioCalculator.calculateHeight(8.23),
                left: ratioCalculator.calculateWidth(16),
              ),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      "Email",
                      style: AppTextStyle.text14W500TextStyle,
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Text(
                      widget.accounts.email,
                      style: AppTextStyle.textDos14W500TextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
