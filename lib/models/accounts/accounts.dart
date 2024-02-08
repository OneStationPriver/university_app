import 'package:freezed_annotation/freezed_annotation.dart';

part 'accounts.freezed.dart';
part 'accounts.g.dart';

@freezed
class Accounts with _$Accounts {
  factory Accounts({
    @JsonKey(name: "your_name") 
    required String yourName,
    @JsonKey(name: "education_level")
    required String educationLevel,
    required String address,
    @JsonKey(name: "phone_number")
    required String phoneNumber,
    required String email,

  }) = _Accounts;

  const Accounts._();

  factory Accounts.fromJson(Map<String, dynamic> json) =>
      _$AccountsFromJson(json);
}
