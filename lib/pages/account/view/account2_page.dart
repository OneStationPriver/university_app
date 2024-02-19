import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:university_app/helper/app_colors.dart';
import 'package:university_app/helper/app_text_style.dart';
import 'package:university_app/helper/data_test/data_test.dart';
import 'package:university_app/helper/ratio_calculator.dart';
import 'package:university_app/models/accounts/accounts.dart';
import 'package:university_app/pages/account/controller/account_controller.dart';
import 'package:university_app/pages/account/controller/state/account_state.dart';

class Account2Page extends StatefulWidget {
  Account2Page({
    super.key,
  });

  @override
  State<Account2Page> createState() => _Account2PageState();
}

class _Account2PageState extends State<Account2Page> {
  final RatioCalculator ratioCalculator = RatioCalculator();

  @override
  Widget build(BuildContext context) {
    //  Accounts myAccount = Accounts.fromJson(account);

    return ChangeNotifierProvider(
      create: (_) => AccountController(const AccountState())..init(),
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Builder(builder: (contextF) {
              final controller = Provider.of<AccountController>(contextF);

              return Column(
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
                        "https://c1.klipartz.com/pngpicture/823/765/sticker-png-login-icon-system-administrator-user-user-profile-icon-design-avatar-face-head.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Aqui le digo que si que segun la condicion true o false cambie de widget al precionar el boton.
                  controller.state.isEdit
                      ? Container(
                          margin: EdgeInsets.only(
                            left: ratioCalculator.calculateWidth(25),
                            right: ratioCalculator.calculateWidth(24.92),
                          ),
                          // height: 500,
                          child: controller.state.fetchPersonalState.when(
                              loading: () {
                            return Center(child: CircularProgressIndicator());
                          }, loaded: (account) {
                            return EditableCard1(accounts: account);
                          }),
                        )
                      : Container(
                          margin: EdgeInsets.only(
                            left: ratioCalculator.calculateWidth(25),
                            right: ratioCalculator.calculateWidth(24.92),
                          ),
                          // height: 500,
                          child: controller.state.fetchPersonalState.when(
                              loading: () {
                            return Center(child: CircularProgressIndicator());
                          }, loaded: (account) {
                            return CardAccount(accounts: account);
                          }),
                        ),
                  // Aqui termina la condicion.
                  SizedBox(
                    height: ratioCalculator.calculateHeight(23.68),
                  ),
                  controller.state.isEdit
                      ? Container(
                          margin: EdgeInsets.only(
                            left: ratioCalculator.calculateWidth(25),
                            right: ratioCalculator.calculateWidth(24.92),
                          ),
                          // height: 500,
                          child: controller.state.fetchPersonalState.when(
                              loading: () {
                            return Center(child: CircularProgressIndicator());
                          }, loaded: (account) {
                            return EditTableCard2(accounts: account);
                          }),
                        )
                      : Container(
                          margin: EdgeInsets.only(
                            left: ratioCalculator.calculateWidth(25),
                            right: ratioCalculator.calculateWidth(24.92),
                          ),
                          // height: 500,
                          child: controller.state.fetchPersonalState.when(
                              loading: () {
                            return Center(child: CircularProgressIndicator());
                          }, loaded: (account) {
                            return CardAccountDos(accounts: account);
                          }),
                        ),
                  SizedBox(
                    height: ratioCalculator.calculateHeight(18),
                  ),
                  ButtonBar(
                    buttonPadding: EdgeInsets.only(
                        left: ratioCalculator
                            .calculateWidth(5)), // Padding del boton
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          right: ratioCalculator.calculateWidth(48),
                          left: ratioCalculator.calculateWidth(41),
                          bottom: ratioCalculator.calculateHeight(15),
                        ),
                        height: ratioCalculator.calculateHeight(48),
                        width: ratioCalculator.calculateWidth(301),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.56),
                          color: AppColors.containerButtonColor,
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            controller.changeEdit();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.botonCardWishlistColor,
                          ),
                          child: Center(
                            child: Text(
                              controller.state.isEdit ? "Guardar" : "Edit",
                              style: AppTextStyle.text16W500TextStyle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              );
            }),
          ),
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
      elevation: 5,
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
      elevation: 5,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        margin: EdgeInsets.only(
          left: ratioCalculator.calculateWidth(16),
          right: ratioCalculator.calculateWidth(32.64),
          bottom: ratioCalculator.calculateHeight(20),
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

class EditableCard1 extends StatefulWidget {
  final Accounts accounts;
  EditableCard1({super.key, required this.accounts});

  @override
  State<EditableCard1> createState() => _EditableCard1State();
}

class _EditableCard1State extends State<EditableCard1> {
  final RatioCalculator ratioCalculator = RatioCalculator();
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 5,
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
                    width: 220,
                    height: 25,
                    child: TextField(
                      decoration: InputDecoration(
                        // border: InputBorder.none,
                        hintText: widget.accounts.yourName,
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
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
                    width: 220,
                    height: 25,
                    child: TextField(
                      decoration: InputDecoration(
                        // border: InputBorder.none,
                        hintText: widget.accounts.educationLevel,
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: ratioCalculator.calculateWidth(16),
              ),
              child: Row(
                children: [
                  Container(
                    width: 220,
                    height: 25,
                    child: TextField(
                      decoration: InputDecoration(
                        // border: InputBorder.none,
                        hintText: widget.accounts.address,
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
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

class EditTableCard2 extends StatefulWidget {
  final Accounts accounts;
  const EditTableCard2({super.key, required this.accounts});

  @override
  State<EditTableCard2> createState() => _EditTableCard2State();
}

class _EditTableCard2State extends State<EditTableCard2> {
  final RatioCalculator ratioCalculator = RatioCalculator();
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 5,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        margin: EdgeInsets.only(
          left: ratioCalculator.calculateWidth(16),
          right: ratioCalculator.calculateWidth(32.64),
          bottom: ratioCalculator.calculateHeight(20),
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
                    width: 220,
                    height: 25,
                    child: TextField(
                      decoration: InputDecoration(
                        // border: InputBorder.none,
                        hintText: widget.accounts.phoneNumber,
                        hintStyle: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
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
                    width: 220,
                    height: 25,
                    child: TextField(
                      decoration: InputDecoration(
                        // border: InputBorder.none,
                        hintText: widget.accounts.email,
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
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
