// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accounts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Accounts _$AccountsFromJson(Map<String, dynamic> json) {
  return _Accounts.fromJson(json);
}

/// @nodoc
mixin _$Accounts {
  @JsonKey(name: "your_name")
  String get yourName => throw _privateConstructorUsedError;
  @JsonKey(name: "education_level")
  String get educationLevel => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountsCopyWith<Accounts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountsCopyWith<$Res> {
  factory $AccountsCopyWith(Accounts value, $Res Function(Accounts) then) =
      _$AccountsCopyWithImpl<$Res, Accounts>;
  @useResult
  $Res call(
      {@JsonKey(name: "your_name") String yourName,
      @JsonKey(name: "education_level") String educationLevel,
      String address,
      @JsonKey(name: "phone_number") String phoneNumber,
      String email});
}

/// @nodoc
class _$AccountsCopyWithImpl<$Res, $Val extends Accounts>
    implements $AccountsCopyWith<$Res> {
  _$AccountsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yourName = null,
    Object? educationLevel = null,
    Object? address = null,
    Object? phoneNumber = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      yourName: null == yourName
          ? _value.yourName
          : yourName // ignore: cast_nullable_to_non_nullable
              as String,
      educationLevel: null == educationLevel
          ? _value.educationLevel
          : educationLevel // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountsImplCopyWith<$Res>
    implements $AccountsCopyWith<$Res> {
  factory _$$AccountsImplCopyWith(
          _$AccountsImpl value, $Res Function(_$AccountsImpl) then) =
      __$$AccountsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "your_name") String yourName,
      @JsonKey(name: "education_level") String educationLevel,
      String address,
      @JsonKey(name: "phone_number") String phoneNumber,
      String email});
}

/// @nodoc
class __$$AccountsImplCopyWithImpl<$Res>
    extends _$AccountsCopyWithImpl<$Res, _$AccountsImpl>
    implements _$$AccountsImplCopyWith<$Res> {
  __$$AccountsImplCopyWithImpl(
      _$AccountsImpl _value, $Res Function(_$AccountsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yourName = null,
    Object? educationLevel = null,
    Object? address = null,
    Object? phoneNumber = null,
    Object? email = null,
  }) {
    return _then(_$AccountsImpl(
      yourName: null == yourName
          ? _value.yourName
          : yourName // ignore: cast_nullable_to_non_nullable
              as String,
      educationLevel: null == educationLevel
          ? _value.educationLevel
          : educationLevel // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountsImpl extends _Accounts {
  _$AccountsImpl(
      {@JsonKey(name: "your_name") required this.yourName,
      @JsonKey(name: "education_level") required this.educationLevel,
      required this.address,
      @JsonKey(name: "phone_number") required this.phoneNumber,
      required this.email})
      : super._();

  factory _$AccountsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountsImplFromJson(json);

  @override
  @JsonKey(name: "your_name")
  final String yourName;
  @override
  @JsonKey(name: "education_level")
  final String educationLevel;
  @override
  final String address;
  @override
  @JsonKey(name: "phone_number")
  final String phoneNumber;
  @override
  final String email;

  @override
  String toString() {
    return 'Accounts(yourName: $yourName, educationLevel: $educationLevel, address: $address, phoneNumber: $phoneNumber, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountsImpl &&
            (identical(other.yourName, yourName) ||
                other.yourName == yourName) &&
            (identical(other.educationLevel, educationLevel) ||
                other.educationLevel == educationLevel) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, yourName, educationLevel, address, phoneNumber, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountsImplCopyWith<_$AccountsImpl> get copyWith =>
      __$$AccountsImplCopyWithImpl<_$AccountsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountsImplToJson(
      this,
    );
  }
}

abstract class _Accounts extends Accounts {
  factory _Accounts(
      {@JsonKey(name: "your_name") required final String yourName,
      @JsonKey(name: "education_level") required final String educationLevel,
      required final String address,
      @JsonKey(name: "phone_number") required final String phoneNumber,
      required final String email}) = _$AccountsImpl;
  _Accounts._() : super._();

  factory _Accounts.fromJson(Map<String, dynamic> json) =
      _$AccountsImpl.fromJson;

  @override
  @JsonKey(name: "your_name")
  String get yourName;
  @override
  @JsonKey(name: "education_level")
  String get educationLevel;
  @override
  String get address;
  @override
  @JsonKey(name: "phone_number")
  String get phoneNumber;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$AccountsImplCopyWith<_$AccountsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
