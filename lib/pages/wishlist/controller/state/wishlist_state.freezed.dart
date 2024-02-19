// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$wishlistState {
  FetchWishlistState get fetchWishlistState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $wishlistStateCopyWith<wishlistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $wishlistStateCopyWith<$Res> {
  factory $wishlistStateCopyWith(
          wishlistState value, $Res Function(wishlistState) then) =
      _$wishlistStateCopyWithImpl<$Res, wishlistState>;
  @useResult
  $Res call({FetchWishlistState fetchWishlistState});

  $FetchWishlistStateCopyWith<$Res> get fetchWishlistState;
}

/// @nodoc
class _$wishlistStateCopyWithImpl<$Res, $Val extends wishlistState>
    implements $wishlistStateCopyWith<$Res> {
  _$wishlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchWishlistState = null,
  }) {
    return _then(_value.copyWith(
      fetchWishlistState: null == fetchWishlistState
          ? _value.fetchWishlistState
          : fetchWishlistState // ignore: cast_nullable_to_non_nullable
              as FetchWishlistState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FetchWishlistStateCopyWith<$Res> get fetchWishlistState {
    return $FetchWishlistStateCopyWith<$Res>(_value.fetchWishlistState,
        (value) {
      return _then(_value.copyWith(fetchWishlistState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$wishlistStateImplCopyWith<$Res>
    implements $wishlistStateCopyWith<$Res> {
  factory _$$wishlistStateImplCopyWith(
          _$wishlistStateImpl value, $Res Function(_$wishlistStateImpl) then) =
      __$$wishlistStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FetchWishlistState fetchWishlistState});

  @override
  $FetchWishlistStateCopyWith<$Res> get fetchWishlistState;
}

/// @nodoc
class __$$wishlistStateImplCopyWithImpl<$Res>
    extends _$wishlistStateCopyWithImpl<$Res, _$wishlistStateImpl>
    implements _$$wishlistStateImplCopyWith<$Res> {
  __$$wishlistStateImplCopyWithImpl(
      _$wishlistStateImpl _value, $Res Function(_$wishlistStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchWishlistState = null,
  }) {
    return _then(_$wishlistStateImpl(
      fetchWishlistState: null == fetchWishlistState
          ? _value.fetchWishlistState
          : fetchWishlistState // ignore: cast_nullable_to_non_nullable
              as FetchWishlistState,
    ));
  }
}

/// @nodoc

class _$wishlistStateImpl implements _wishlistState {
  const _$wishlistStateImpl(
      {this.fetchWishlistState = const FetchWishlistState.loading()});

  @override
  @JsonKey()
  final FetchWishlistState fetchWishlistState;

  @override
  String toString() {
    return 'wishlistState(fetchWishlistState: $fetchWishlistState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$wishlistStateImpl &&
            (identical(other.fetchWishlistState, fetchWishlistState) ||
                other.fetchWishlistState == fetchWishlistState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchWishlistState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$wishlistStateImplCopyWith<_$wishlistStateImpl> get copyWith =>
      __$$wishlistStateImplCopyWithImpl<_$wishlistStateImpl>(this, _$identity);
}

abstract class _wishlistState implements wishlistState {
  const factory _wishlistState({final FetchWishlistState fetchWishlistState}) =
      _$wishlistStateImpl;

  @override
  FetchWishlistState get fetchWishlistState;
  @override
  @JsonKey(ignore: true)
  _$$wishlistStateImplCopyWith<_$wishlistStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchWishlistState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Wishlists> listWishlist) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Wishlists> listWishlist)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Wishlists> listWishlist)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchWishlistStateLoading value) loading,
    required TResult Function(FetchWishlistStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchWishlistStateLoading value)? loading,
    TResult? Function(FetchWishlistStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchWishlistStateLoading value)? loading,
    TResult Function(FetchWishlistStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchWishlistStateCopyWith<$Res> {
  factory $FetchWishlistStateCopyWith(
          FetchWishlistState value, $Res Function(FetchWishlistState) then) =
      _$FetchWishlistStateCopyWithImpl<$Res, FetchWishlistState>;
}

/// @nodoc
class _$FetchWishlistStateCopyWithImpl<$Res, $Val extends FetchWishlistState>
    implements $FetchWishlistStateCopyWith<$Res> {
  _$FetchWishlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchWishlistStateLoadingImplCopyWith<$Res> {
  factory _$$FetchWishlistStateLoadingImplCopyWith(
          _$FetchWishlistStateLoadingImpl value,
          $Res Function(_$FetchWishlistStateLoadingImpl) then) =
      __$$FetchWishlistStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchWishlistStateLoadingImplCopyWithImpl<$Res>
    extends _$FetchWishlistStateCopyWithImpl<$Res,
        _$FetchWishlistStateLoadingImpl>
    implements _$$FetchWishlistStateLoadingImplCopyWith<$Res> {
  __$$FetchWishlistStateLoadingImplCopyWithImpl(
      _$FetchWishlistStateLoadingImpl _value,
      $Res Function(_$FetchWishlistStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchWishlistStateLoadingImpl implements FetchWishlistStateLoading {
  const _$FetchWishlistStateLoadingImpl();

  @override
  String toString() {
    return 'FetchWishlistState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchWishlistStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Wishlists> listWishlist) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Wishlists> listWishlist)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Wishlists> listWishlist)? loaded,
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
    required TResult Function(FetchWishlistStateLoading value) loading,
    required TResult Function(FetchWishlistStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchWishlistStateLoading value)? loading,
    TResult? Function(FetchWishlistStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchWishlistStateLoading value)? loading,
    TResult Function(FetchWishlistStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FetchWishlistStateLoading implements FetchWishlistState {
  const factory FetchWishlistStateLoading() = _$FetchWishlistStateLoadingImpl;
}

/// @nodoc
abstract class _$$FetchWishlistStateLoadedImplCopyWith<$Res> {
  factory _$$FetchWishlistStateLoadedImplCopyWith(
          _$FetchWishlistStateLoadedImpl value,
          $Res Function(_$FetchWishlistStateLoadedImpl) then) =
      __$$FetchWishlistStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Wishlists> listWishlist});
}

/// @nodoc
class __$$FetchWishlistStateLoadedImplCopyWithImpl<$Res>
    extends _$FetchWishlistStateCopyWithImpl<$Res,
        _$FetchWishlistStateLoadedImpl>
    implements _$$FetchWishlistStateLoadedImplCopyWith<$Res> {
  __$$FetchWishlistStateLoadedImplCopyWithImpl(
      _$FetchWishlistStateLoadedImpl _value,
      $Res Function(_$FetchWishlistStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listWishlist = null,
  }) {
    return _then(_$FetchWishlistStateLoadedImpl(
      null == listWishlist
          ? _value._listWishlist
          : listWishlist // ignore: cast_nullable_to_non_nullable
              as List<Wishlists>,
    ));
  }
}

/// @nodoc

class _$FetchWishlistStateLoadedImpl implements FetchWishlistStateLoaded {
  const _$FetchWishlistStateLoadedImpl(final List<Wishlists> listWishlist)
      : _listWishlist = listWishlist;

  final List<Wishlists> _listWishlist;
  @override
  List<Wishlists> get listWishlist {
    if (_listWishlist is EqualUnmodifiableListView) return _listWishlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listWishlist);
  }

  @override
  String toString() {
    return 'FetchWishlistState.loaded(listWishlist: $listWishlist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchWishlistStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._listWishlist, _listWishlist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listWishlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchWishlistStateLoadedImplCopyWith<_$FetchWishlistStateLoadedImpl>
      get copyWith => __$$FetchWishlistStateLoadedImplCopyWithImpl<
          _$FetchWishlistStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Wishlists> listWishlist) loaded,
  }) {
    return loaded(listWishlist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Wishlists> listWishlist)? loaded,
  }) {
    return loaded?.call(listWishlist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Wishlists> listWishlist)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(listWishlist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchWishlistStateLoading value) loading,
    required TResult Function(FetchWishlistStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchWishlistStateLoading value)? loading,
    TResult? Function(FetchWishlistStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchWishlistStateLoading value)? loading,
    TResult Function(FetchWishlistStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FetchWishlistStateLoaded implements FetchWishlistState {
  const factory FetchWishlistStateLoaded(final List<Wishlists> listWishlist) =
      _$FetchWishlistStateLoadedImpl;

  List<Wishlists> get listWishlist;
  @JsonKey(ignore: true)
  _$$FetchWishlistStateLoadedImplCopyWith<_$FetchWishlistStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
