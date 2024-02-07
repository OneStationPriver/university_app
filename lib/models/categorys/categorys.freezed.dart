// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categorys.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Categorys _$CategorysFromJson(Map<String, dynamic> json) {
  return _Categorys.fromJson(json);
}

/// @nodoc
mixin _$Categorys {
  String get icon => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategorysCopyWith<Categorys> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategorysCopyWith<$Res> {
  factory $CategorysCopyWith(Categorys value, $Res Function(Categorys) then) =
      _$CategorysCopyWithImpl<$Res, Categorys>;
  @useResult
  $Res call({String icon, String title});
}

/// @nodoc
class _$CategorysCopyWithImpl<$Res, $Val extends Categorys>
    implements $CategorysCopyWith<$Res> {
  _$CategorysCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategorysImplCopyWith<$Res>
    implements $CategorysCopyWith<$Res> {
  factory _$$CategorysImplCopyWith(
          _$CategorysImpl value, $Res Function(_$CategorysImpl) then) =
      __$$CategorysImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String icon, String title});
}

/// @nodoc
class __$$CategorysImplCopyWithImpl<$Res>
    extends _$CategorysCopyWithImpl<$Res, _$CategorysImpl>
    implements _$$CategorysImplCopyWith<$Res> {
  __$$CategorysImplCopyWithImpl(
      _$CategorysImpl _value, $Res Function(_$CategorysImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? title = null,
  }) {
    return _then(_$CategorysImpl(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategorysImpl extends _Categorys {
  _$CategorysImpl({required this.icon, required this.title}) : super._();

  factory _$CategorysImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategorysImplFromJson(json);

  @override
  final String icon;
  @override
  final String title;

  @override
  String toString() {
    return 'Categorys(icon: $icon, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategorysImpl &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, icon, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategorysImplCopyWith<_$CategorysImpl> get copyWith =>
      __$$CategorysImplCopyWithImpl<_$CategorysImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategorysImplToJson(
      this,
    );
  }
}

abstract class _Categorys extends Categorys {
  factory _Categorys(
      {required final String icon,
      required final String title}) = _$CategorysImpl;
  _Categorys._() : super._();

  factory _Categorys.fromJson(Map<String, dynamic> json) =
      _$CategorysImpl.fromJson;

  @override
  String get icon;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$CategorysImplCopyWith<_$CategorysImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
