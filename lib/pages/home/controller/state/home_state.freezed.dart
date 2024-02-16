// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  FetchRecommendedState get fetchRecommendedState =>
      throw _privateConstructorUsedError;
  FetchCategorysState get fetchCategorysState =>
      throw _privateConstructorUsedError;
  FetchTopCoursersState get fetchTopCoursersState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {FetchRecommendedState fetchRecommendedState,
      FetchCategorysState fetchCategorysState,
      FetchTopCoursersState fetchTopCoursersState});

  $FetchRecommendedStateCopyWith<$Res> get fetchRecommendedState;
  $FetchCategorysStateCopyWith<$Res> get fetchCategorysState;
  $FetchTopCoursersStateCopyWith<$Res> get fetchTopCoursersState;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchRecommendedState = null,
    Object? fetchCategorysState = null,
    Object? fetchTopCoursersState = null,
  }) {
    return _then(_value.copyWith(
      fetchRecommendedState: null == fetchRecommendedState
          ? _value.fetchRecommendedState
          : fetchRecommendedState // ignore: cast_nullable_to_non_nullable
              as FetchRecommendedState,
      fetchCategorysState: null == fetchCategorysState
          ? _value.fetchCategorysState
          : fetchCategorysState // ignore: cast_nullable_to_non_nullable
              as FetchCategorysState,
      fetchTopCoursersState: null == fetchTopCoursersState
          ? _value.fetchTopCoursersState
          : fetchTopCoursersState // ignore: cast_nullable_to_non_nullable
              as FetchTopCoursersState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FetchRecommendedStateCopyWith<$Res> get fetchRecommendedState {
    return $FetchRecommendedStateCopyWith<$Res>(_value.fetchRecommendedState,
        (value) {
      return _then(_value.copyWith(fetchRecommendedState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FetchCategorysStateCopyWith<$Res> get fetchCategorysState {
    return $FetchCategorysStateCopyWith<$Res>(_value.fetchCategorysState,
        (value) {
      return _then(_value.copyWith(fetchCategorysState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FetchTopCoursersStateCopyWith<$Res> get fetchTopCoursersState {
    return $FetchTopCoursersStateCopyWith<$Res>(_value.fetchTopCoursersState,
        (value) {
      return _then(_value.copyWith(fetchTopCoursersState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FetchRecommendedState fetchRecommendedState,
      FetchCategorysState fetchCategorysState,
      FetchTopCoursersState fetchTopCoursersState});

  @override
  $FetchRecommendedStateCopyWith<$Res> get fetchRecommendedState;
  @override
  $FetchCategorysStateCopyWith<$Res> get fetchCategorysState;
  @override
  $FetchTopCoursersStateCopyWith<$Res> get fetchTopCoursersState;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchRecommendedState = null,
    Object? fetchCategorysState = null,
    Object? fetchTopCoursersState = null,
  }) {
    return _then(_$HomeStateImpl(
      fetchRecommendedState: null == fetchRecommendedState
          ? _value.fetchRecommendedState
          : fetchRecommendedState // ignore: cast_nullable_to_non_nullable
              as FetchRecommendedState,
      fetchCategorysState: null == fetchCategorysState
          ? _value.fetchCategorysState
          : fetchCategorysState // ignore: cast_nullable_to_non_nullable
              as FetchCategorysState,
      fetchTopCoursersState: null == fetchTopCoursersState
          ? _value.fetchTopCoursersState
          : fetchTopCoursersState // ignore: cast_nullable_to_non_nullable
              as FetchTopCoursersState,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.fetchRecommendedState = const FetchRecommendedState.loading(),
      this.fetchCategorysState = const FetchCategorysState.loading(),
      this.fetchTopCoursersState = const FetchTopCoursersState.loading()});

  @override
  @JsonKey()
  final FetchRecommendedState fetchRecommendedState;
  @override
  @JsonKey()
  final FetchCategorysState fetchCategorysState;
  @override
  @JsonKey()
  final FetchTopCoursersState fetchTopCoursersState;

  @override
  String toString() {
    return 'HomeState(fetchRecommendedState: $fetchRecommendedState, fetchCategorysState: $fetchCategorysState, fetchTopCoursersState: $fetchTopCoursersState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.fetchRecommendedState, fetchRecommendedState) ||
                other.fetchRecommendedState == fetchRecommendedState) &&
            (identical(other.fetchCategorysState, fetchCategorysState) ||
                other.fetchCategorysState == fetchCategorysState) &&
            (identical(other.fetchTopCoursersState, fetchTopCoursersState) ||
                other.fetchTopCoursersState == fetchTopCoursersState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchRecommendedState,
      fetchCategorysState, fetchTopCoursersState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final FetchRecommendedState fetchRecommendedState,
      final FetchCategorysState fetchCategorysState,
      final FetchTopCoursersState fetchTopCoursersState}) = _$HomeStateImpl;

  @override
  FetchRecommendedState get fetchRecommendedState;
  @override
  FetchCategorysState get fetchCategorysState;
  @override
  FetchTopCoursersState get fetchTopCoursersState;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchRecommendedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Coursers> listRecommended) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Coursers> listRecommended)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Coursers> listRecommended)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchRecommendedStateLoading value) loading,
    required TResult Function(FetchRecommendedStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRecommendedStateLoading value)? loading,
    TResult? Function(FetchRecommendedStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRecommendedStateLoading value)? loading,
    TResult Function(FetchRecommendedStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchRecommendedStateCopyWith<$Res> {
  factory $FetchRecommendedStateCopyWith(FetchRecommendedState value,
          $Res Function(FetchRecommendedState) then) =
      _$FetchRecommendedStateCopyWithImpl<$Res, FetchRecommendedState>;
}

/// @nodoc
class _$FetchRecommendedStateCopyWithImpl<$Res,
        $Val extends FetchRecommendedState>
    implements $FetchRecommendedStateCopyWith<$Res> {
  _$FetchRecommendedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchRecommendedStateLoadingImplCopyWith<$Res> {
  factory _$$FetchRecommendedStateLoadingImplCopyWith(
          _$FetchRecommendedStateLoadingImpl value,
          $Res Function(_$FetchRecommendedStateLoadingImpl) then) =
      __$$FetchRecommendedStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchRecommendedStateLoadingImplCopyWithImpl<$Res>
    extends _$FetchRecommendedStateCopyWithImpl<$Res,
        _$FetchRecommendedStateLoadingImpl>
    implements _$$FetchRecommendedStateLoadingImplCopyWith<$Res> {
  __$$FetchRecommendedStateLoadingImplCopyWithImpl(
      _$FetchRecommendedStateLoadingImpl _value,
      $Res Function(_$FetchRecommendedStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchRecommendedStateLoadingImpl
    implements FetchRecommendedStateLoading {
  const _$FetchRecommendedStateLoadingImpl();

  @override
  String toString() {
    return 'FetchRecommendedState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRecommendedStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Coursers> listRecommended) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Coursers> listRecommended)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Coursers> listRecommended)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchRecommendedStateLoading value) loading,
    required TResult Function(FetchRecommendedStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRecommendedStateLoading value)? loading,
    TResult? Function(FetchRecommendedStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRecommendedStateLoading value)? loading,
    TResult Function(FetchRecommendedStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FetchRecommendedStateLoading implements FetchRecommendedState {
  const factory FetchRecommendedStateLoading() =
      _$FetchRecommendedStateLoadingImpl;
}

/// @nodoc
abstract class _$$FetchRecommendedStateLoadedImplCopyWith<$Res> {
  factory _$$FetchRecommendedStateLoadedImplCopyWith(
          _$FetchRecommendedStateLoadedImpl value,
          $Res Function(_$FetchRecommendedStateLoadedImpl) then) =
      __$$FetchRecommendedStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Coursers> listRecommended});
}

/// @nodoc
class __$$FetchRecommendedStateLoadedImplCopyWithImpl<$Res>
    extends _$FetchRecommendedStateCopyWithImpl<$Res,
        _$FetchRecommendedStateLoadedImpl>
    implements _$$FetchRecommendedStateLoadedImplCopyWith<$Res> {
  __$$FetchRecommendedStateLoadedImplCopyWithImpl(
      _$FetchRecommendedStateLoadedImpl _value,
      $Res Function(_$FetchRecommendedStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listRecommended = null,
  }) {
    return _then(_$FetchRecommendedStateLoadedImpl(
      null == listRecommended
          ? _value._listRecommended
          : listRecommended // ignore: cast_nullable_to_non_nullable
              as List<Coursers>,
    ));
  }
}

/// @nodoc

class _$FetchRecommendedStateLoadedImpl implements FetchRecommendedStateLoaded {
  const _$FetchRecommendedStateLoadedImpl(final List<Coursers> listRecommended)
      : _listRecommended = listRecommended;

  final List<Coursers> _listRecommended;
  @override
  List<Coursers> get listRecommended {
    if (_listRecommended is EqualUnmodifiableListView) return _listRecommended;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listRecommended);
  }

  @override
  String toString() {
    return 'FetchRecommendedState.loaded(listRecommended: $listRecommended)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRecommendedStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._listRecommended, _listRecommended));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listRecommended));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchRecommendedStateLoadedImplCopyWith<_$FetchRecommendedStateLoadedImpl>
      get copyWith => __$$FetchRecommendedStateLoadedImplCopyWithImpl<
          _$FetchRecommendedStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Coursers> listRecommended) loaded,
  }) {
    return loaded(listRecommended);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Coursers> listRecommended)? loaded,
  }) {
    return loaded?.call(listRecommended);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Coursers> listRecommended)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(listRecommended);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchRecommendedStateLoading value) loading,
    required TResult Function(FetchRecommendedStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRecommendedStateLoading value)? loading,
    TResult? Function(FetchRecommendedStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRecommendedStateLoading value)? loading,
    TResult Function(FetchRecommendedStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FetchRecommendedStateLoaded implements FetchRecommendedState {
  const factory FetchRecommendedStateLoaded(
      final List<Coursers> listRecommended) = _$FetchRecommendedStateLoadedImpl;

  List<Coursers> get listRecommended;
  @JsonKey(ignore: true)
  _$$FetchRecommendedStateLoadedImplCopyWith<_$FetchRecommendedStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchCategorysState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Categorys> listCategorys) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Categorys> listCategorys)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Categorys> listCategorys)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCategorysStateLoading value) loading,
    required TResult Function(FetchCategorysStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCategorysStateLoading value)? loading,
    TResult? Function(FetchCategorysStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCategorysStateLoading value)? loading,
    TResult Function(FetchCategorysStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchCategorysStateCopyWith<$Res> {
  factory $FetchCategorysStateCopyWith(
          FetchCategorysState value, $Res Function(FetchCategorysState) then) =
      _$FetchCategorysStateCopyWithImpl<$Res, FetchCategorysState>;
}

/// @nodoc
class _$FetchCategorysStateCopyWithImpl<$Res, $Val extends FetchCategorysState>
    implements $FetchCategorysStateCopyWith<$Res> {
  _$FetchCategorysStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchCategorysStateLoadingImplCopyWith<$Res> {
  factory _$$FetchCategorysStateLoadingImplCopyWith(
          _$FetchCategorysStateLoadingImpl value,
          $Res Function(_$FetchCategorysStateLoadingImpl) then) =
      __$$FetchCategorysStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCategorysStateLoadingImplCopyWithImpl<$Res>
    extends _$FetchCategorysStateCopyWithImpl<$Res,
        _$FetchCategorysStateLoadingImpl>
    implements _$$FetchCategorysStateLoadingImplCopyWith<$Res> {
  __$$FetchCategorysStateLoadingImplCopyWithImpl(
      _$FetchCategorysStateLoadingImpl _value,
      $Res Function(_$FetchCategorysStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCategorysStateLoadingImpl implements FetchCategorysStateLoading {
  const _$FetchCategorysStateLoadingImpl();

  @override
  String toString() {
    return 'FetchCategorysState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCategorysStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Categorys> listCategorys) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Categorys> listCategorys)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Categorys> listCategorys)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCategorysStateLoading value) loading,
    required TResult Function(FetchCategorysStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCategorysStateLoading value)? loading,
    TResult? Function(FetchCategorysStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCategorysStateLoading value)? loading,
    TResult Function(FetchCategorysStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FetchCategorysStateLoading implements FetchCategorysState {
  const factory FetchCategorysStateLoading() = _$FetchCategorysStateLoadingImpl;
}

/// @nodoc
abstract class _$$FetchCategorysStateLoadedImplCopyWith<$Res> {
  factory _$$FetchCategorysStateLoadedImplCopyWith(
          _$FetchCategorysStateLoadedImpl value,
          $Res Function(_$FetchCategorysStateLoadedImpl) then) =
      __$$FetchCategorysStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Categorys> listCategorys});
}

/// @nodoc
class __$$FetchCategorysStateLoadedImplCopyWithImpl<$Res>
    extends _$FetchCategorysStateCopyWithImpl<$Res,
        _$FetchCategorysStateLoadedImpl>
    implements _$$FetchCategorysStateLoadedImplCopyWith<$Res> {
  __$$FetchCategorysStateLoadedImplCopyWithImpl(
      _$FetchCategorysStateLoadedImpl _value,
      $Res Function(_$FetchCategorysStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listCategorys = null,
  }) {
    return _then(_$FetchCategorysStateLoadedImpl(
      null == listCategorys
          ? _value._listCategorys
          : listCategorys // ignore: cast_nullable_to_non_nullable
              as List<Categorys>,
    ));
  }
}

/// @nodoc

class _$FetchCategorysStateLoadedImpl implements FetchCategorysStateLoaded {
  const _$FetchCategorysStateLoadedImpl(final List<Categorys> listCategorys)
      : _listCategorys = listCategorys;

  final List<Categorys> _listCategorys;
  @override
  List<Categorys> get listCategorys {
    if (_listCategorys is EqualUnmodifiableListView) return _listCategorys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listCategorys);
  }

  @override
  String toString() {
    return 'FetchCategorysState.loaded(listCategorys: $listCategorys)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCategorysStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._listCategorys, _listCategorys));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listCategorys));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCategorysStateLoadedImplCopyWith<_$FetchCategorysStateLoadedImpl>
      get copyWith => __$$FetchCategorysStateLoadedImplCopyWithImpl<
          _$FetchCategorysStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Categorys> listCategorys) loaded,
  }) {
    return loaded(listCategorys);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Categorys> listCategorys)? loaded,
  }) {
    return loaded?.call(listCategorys);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Categorys> listCategorys)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(listCategorys);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCategorysStateLoading value) loading,
    required TResult Function(FetchCategorysStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCategorysStateLoading value)? loading,
    TResult? Function(FetchCategorysStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCategorysStateLoading value)? loading,
    TResult Function(FetchCategorysStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FetchCategorysStateLoaded implements FetchCategorysState {
  const factory FetchCategorysStateLoaded(final List<Categorys> listCategorys) =
      _$FetchCategorysStateLoadedImpl;

  List<Categorys> get listCategorys;
  @JsonKey(ignore: true)
  _$$FetchCategorysStateLoadedImplCopyWith<_$FetchCategorysStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchTopCoursersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Coursers> listTopCoursers) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Coursers> listTopCoursers)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Coursers> listTopCoursers)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTopCoursersStateLoading value) loading,
    required TResult Function(FetchTopCoursersStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTopCoursersStateLoading value)? loading,
    TResult? Function(FetchTopCoursersStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTopCoursersStateLoading value)? loading,
    TResult Function(FetchTopCoursersStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchTopCoursersStateCopyWith<$Res> {
  factory $FetchTopCoursersStateCopyWith(FetchTopCoursersState value,
          $Res Function(FetchTopCoursersState) then) =
      _$FetchTopCoursersStateCopyWithImpl<$Res, FetchTopCoursersState>;
}

/// @nodoc
class _$FetchTopCoursersStateCopyWithImpl<$Res,
        $Val extends FetchTopCoursersState>
    implements $FetchTopCoursersStateCopyWith<$Res> {
  _$FetchTopCoursersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchTopCoursersStateLoadingImplCopyWith<$Res> {
  factory _$$FetchTopCoursersStateLoadingImplCopyWith(
          _$FetchTopCoursersStateLoadingImpl value,
          $Res Function(_$FetchTopCoursersStateLoadingImpl) then) =
      __$$FetchTopCoursersStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTopCoursersStateLoadingImplCopyWithImpl<$Res>
    extends _$FetchTopCoursersStateCopyWithImpl<$Res,
        _$FetchTopCoursersStateLoadingImpl>
    implements _$$FetchTopCoursersStateLoadingImplCopyWith<$Res> {
  __$$FetchTopCoursersStateLoadingImplCopyWithImpl(
      _$FetchTopCoursersStateLoadingImpl _value,
      $Res Function(_$FetchTopCoursersStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchTopCoursersStateLoadingImpl
    implements FetchTopCoursersStateLoading {
  const _$FetchTopCoursersStateLoadingImpl();

  @override
  String toString() {
    return 'FetchTopCoursersState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTopCoursersStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Coursers> listTopCoursers) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Coursers> listTopCoursers)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Coursers> listTopCoursers)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTopCoursersStateLoading value) loading,
    required TResult Function(FetchTopCoursersStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTopCoursersStateLoading value)? loading,
    TResult? Function(FetchTopCoursersStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTopCoursersStateLoading value)? loading,
    TResult Function(FetchTopCoursersStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FetchTopCoursersStateLoading implements FetchTopCoursersState {
  const factory FetchTopCoursersStateLoading() =
      _$FetchTopCoursersStateLoadingImpl;
}

/// @nodoc
abstract class _$$FetchTopCoursersStateLoadedImplCopyWith<$Res> {
  factory _$$FetchTopCoursersStateLoadedImplCopyWith(
          _$FetchTopCoursersStateLoadedImpl value,
          $Res Function(_$FetchTopCoursersStateLoadedImpl) then) =
      __$$FetchTopCoursersStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Coursers> listTopCoursers});
}

/// @nodoc
class __$$FetchTopCoursersStateLoadedImplCopyWithImpl<$Res>
    extends _$FetchTopCoursersStateCopyWithImpl<$Res,
        _$FetchTopCoursersStateLoadedImpl>
    implements _$$FetchTopCoursersStateLoadedImplCopyWith<$Res> {
  __$$FetchTopCoursersStateLoadedImplCopyWithImpl(
      _$FetchTopCoursersStateLoadedImpl _value,
      $Res Function(_$FetchTopCoursersStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listTopCoursers = null,
  }) {
    return _then(_$FetchTopCoursersStateLoadedImpl(
      null == listTopCoursers
          ? _value._listTopCoursers
          : listTopCoursers // ignore: cast_nullable_to_non_nullable
              as List<Coursers>,
    ));
  }
}

/// @nodoc

class _$FetchTopCoursersStateLoadedImpl implements FetchTopCoursersStateLoaded {
  const _$FetchTopCoursersStateLoadedImpl(final List<Coursers> listTopCoursers)
      : _listTopCoursers = listTopCoursers;

  final List<Coursers> _listTopCoursers;
  @override
  List<Coursers> get listTopCoursers {
    if (_listTopCoursers is EqualUnmodifiableListView) return _listTopCoursers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listTopCoursers);
  }

  @override
  String toString() {
    return 'FetchTopCoursersState.loaded(listTopCoursers: $listTopCoursers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTopCoursersStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._listTopCoursers, _listTopCoursers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listTopCoursers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTopCoursersStateLoadedImplCopyWith<_$FetchTopCoursersStateLoadedImpl>
      get copyWith => __$$FetchTopCoursersStateLoadedImplCopyWithImpl<
          _$FetchTopCoursersStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Coursers> listTopCoursers) loaded,
  }) {
    return loaded(listTopCoursers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Coursers> listTopCoursers)? loaded,
  }) {
    return loaded?.call(listTopCoursers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Coursers> listTopCoursers)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(listTopCoursers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTopCoursersStateLoading value) loading,
    required TResult Function(FetchTopCoursersStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTopCoursersStateLoading value)? loading,
    TResult? Function(FetchTopCoursersStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTopCoursersStateLoading value)? loading,
    TResult Function(FetchTopCoursersStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FetchTopCoursersStateLoaded implements FetchTopCoursersState {
  const factory FetchTopCoursersStateLoaded(
      final List<Coursers> listTopCoursers) = _$FetchTopCoursersStateLoadedImpl;

  List<Coursers> get listTopCoursers;
  @JsonKey(ignore: true)
  _$$FetchTopCoursersStateLoadedImplCopyWith<_$FetchTopCoursersStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
