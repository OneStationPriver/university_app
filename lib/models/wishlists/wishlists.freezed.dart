// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlists.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Wishlists _$WishlistsFromJson(Map<String, dynamic> json) {
  return _Wishlists.fromJson(json);
}

/// @nodoc
mixin _$Wishlists {
  @JsonKey(name: "url_image")
  String get urlImage => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "question_number")
  String get question => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishlistsCopyWith<Wishlists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistsCopyWith<$Res> {
  factory $WishlistsCopyWith(Wishlists value, $Res Function(Wishlists) then) =
      _$WishlistsCopyWithImpl<$Res, Wishlists>;
  @useResult
  $Res call(
      {@JsonKey(name: "url_image") String urlImage,
      String title,
      @JsonKey(name: "question_number") String question,
      String time});
}

/// @nodoc
class _$WishlistsCopyWithImpl<$Res, $Val extends Wishlists>
    implements $WishlistsCopyWith<$Res> {
  _$WishlistsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlImage = null,
    Object? title = null,
    Object? question = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      urlImage: null == urlImage
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistsImplCopyWith<$Res>
    implements $WishlistsCopyWith<$Res> {
  factory _$$WishlistsImplCopyWith(
          _$WishlistsImpl value, $Res Function(_$WishlistsImpl) then) =
      __$$WishlistsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "url_image") String urlImage,
      String title,
      @JsonKey(name: "question_number") String question,
      String time});
}

/// @nodoc
class __$$WishlistsImplCopyWithImpl<$Res>
    extends _$WishlistsCopyWithImpl<$Res, _$WishlistsImpl>
    implements _$$WishlistsImplCopyWith<$Res> {
  __$$WishlistsImplCopyWithImpl(
      _$WishlistsImpl _value, $Res Function(_$WishlistsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlImage = null,
    Object? title = null,
    Object? question = null,
    Object? time = null,
  }) {
    return _then(_$WishlistsImpl(
      urlImage: null == urlImage
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WishlistsImpl extends _Wishlists {
  _$WishlistsImpl(
      {@JsonKey(name: "url_image") required this.urlImage,
      required this.title,
      @JsonKey(name: "question_number") required this.question,
      required this.time})
      : super._();

  factory _$WishlistsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishlistsImplFromJson(json);

  @override
  @JsonKey(name: "url_image")
  final String urlImage;
  @override
  final String title;
  @override
  @JsonKey(name: "question_number")
  final String question;
  @override
  final String time;

  @override
  String toString() {
    return 'Wishlists(urlImage: $urlImage, title: $title, question: $question, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistsImpl &&
            (identical(other.urlImage, urlImage) ||
                other.urlImage == urlImage) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, urlImage, title, question, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistsImplCopyWith<_$WishlistsImpl> get copyWith =>
      __$$WishlistsImplCopyWithImpl<_$WishlistsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishlistsImplToJson(
      this,
    );
  }
}

abstract class _Wishlists extends Wishlists {
  factory _Wishlists(
      {@JsonKey(name: "url_image") required final String urlImage,
      required final String title,
      @JsonKey(name: "question_number") required final String question,
      required final String time}) = _$WishlistsImpl;
  _Wishlists._() : super._();

  factory _Wishlists.fromJson(Map<String, dynamic> json) =
      _$WishlistsImpl.fromJson;

  @override
  @JsonKey(name: "url_image")
  String get urlImage;
  @override
  String get title;
  @override
  @JsonKey(name: "question_number")
  String get question;
  @override
  String get time;
  @override
  @JsonKey(ignore: true)
  _$$WishlistsImplCopyWith<_$WishlistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
