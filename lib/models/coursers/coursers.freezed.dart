// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coursers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Coursers _$CoursersFromJson(Map<String, dynamic> json) {
  return _Coursers.fromJson(json);
}

/// @nodoc
mixin _$Coursers {
  @JsonKey(name: "url_image")
  String get urlImage => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "is_favorite")
  bool get isFavorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoursersCopyWith<Coursers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursersCopyWith<$Res> {
  factory $CoursersCopyWith(Coursers value, $Res Function(Coursers) then) =
      _$CoursersCopyWithImpl<$Res, Coursers>;
  @useResult
  $Res call(
      {@JsonKey(name: "url_image") String urlImage,
      String title,
      String duration,
      @JsonKey(name: "is_favorite") bool isFavorite});
}

/// @nodoc
class _$CoursersCopyWithImpl<$Res, $Val extends Coursers>
    implements $CoursersCopyWith<$Res> {
  _$CoursersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlImage = null,
    Object? title = null,
    Object? duration = null,
    Object? isFavorite = null,
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
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoursersImplCopyWith<$Res>
    implements $CoursersCopyWith<$Res> {
  factory _$$CoursersImplCopyWith(
          _$CoursersImpl value, $Res Function(_$CoursersImpl) then) =
      __$$CoursersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "url_image") String urlImage,
      String title,
      String duration,
      @JsonKey(name: "is_favorite") bool isFavorite});
}

/// @nodoc
class __$$CoursersImplCopyWithImpl<$Res>
    extends _$CoursersCopyWithImpl<$Res, _$CoursersImpl>
    implements _$$CoursersImplCopyWith<$Res> {
  __$$CoursersImplCopyWithImpl(
      _$CoursersImpl _value, $Res Function(_$CoursersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlImage = null,
    Object? title = null,
    Object? duration = null,
    Object? isFavorite = null,
  }) {
    return _then(_$CoursersImpl(
      urlImage: null == urlImage
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoursersImpl extends _Coursers {
  _$CoursersImpl(
      {@JsonKey(name: "url_image") required this.urlImage,
      required this.title,
      required this.duration,
      @JsonKey(name: "is_favorite") required this.isFavorite})
      : super._();

  factory _$CoursersImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoursersImplFromJson(json);

  @override
  @JsonKey(name: "url_image")
  final String urlImage;
  @override
  final String title;
  @override
  final String duration;
  @override
  @JsonKey(name: "is_favorite")
  final bool isFavorite;

  @override
  String toString() {
    return 'Coursers(urlImage: $urlImage, title: $title, duration: $duration, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoursersImpl &&
            (identical(other.urlImage, urlImage) ||
                other.urlImage == urlImage) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, urlImage, title, duration, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoursersImplCopyWith<_$CoursersImpl> get copyWith =>
      __$$CoursersImplCopyWithImpl<_$CoursersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoursersImplToJson(
      this,
    );
  }
}

abstract class _Coursers extends Coursers {
  factory _Coursers(
          {@JsonKey(name: "url_image") required final String urlImage,
          required final String title,
          required final String duration,
          @JsonKey(name: "is_favorite") required final bool isFavorite}) =
      _$CoursersImpl;
  _Coursers._() : super._();

  factory _Coursers.fromJson(Map<String, dynamic> json) =
      _$CoursersImpl.fromJson;

  @override
  @JsonKey(name: "url_image")
  String get urlImage;
  @override
  String get title;
  @override
  String get duration;
  @override
  @JsonKey(name: "is_favorite")
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$CoursersImplCopyWith<_$CoursersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
