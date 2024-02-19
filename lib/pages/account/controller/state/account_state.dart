import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:university_app/models/accounts/accounts.dart';
import 'package:university_app/models/wishlists/wishlists.dart';

part 'account_state.freezed.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState({
    @Default(FetchPersonalState.loading()) FetchPersonalState fetchPersonalState,
    @Default(false) bool isEdit,
  }) = _AccountState;
}

// Primer Fetch
@freezed 
class FetchPersonalState with _$FetchPersonalState {
  const factory FetchPersonalState.loading() = FetchPersonalStateLoading;
  const factory FetchPersonalState.loaded(
    Accounts account,
  ) = FetchPersonalStateLoaded;
}
