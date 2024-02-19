import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:university_app/helper/data_test/data_test.dart';
import 'package:university_app/models/accounts/accounts.dart';
import 'package:university_app/pages/account/controller/state/account_state.dart';
import 'package:university_app/state_notifier.dart';

// para usar el estado debes usar "extends StateNotifer" con "ChangeNotifer" no funciona.
class AccountController extends StateNotifier<AccountState> {
  // bool isEdit;
  AccountController(super._state);

  void init() {
    Accounts myAccount = Accounts.fromJson(account);

    Future.delayed(Duration(seconds: 5), () {
      state = state.copyWith(
        fetchPersonalState: FetchPersonalState.loaded(myAccount),
      );
    });
  }

  void changeEdit() {
    state = state.copyWith(isEdit: !state.isEdit);
  }
}
