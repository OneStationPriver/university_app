// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountState {
  FetchPersonalState get fetchPersonalState =>
      throw _privateConstructorUsedError;
  bool get isEdit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountStateCopyWith<AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
  @useResult
  $Res call({FetchPersonalState fetchPersonalState, bool isEdit});

  $FetchPersonalStateCopyWith<$Res> get fetchPersonalState;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchPersonalState = null,
    Object? isEdit = null,
  }) {
    return _then(_value.copyWith(
      fetchPersonalState: null == fetchPersonalState
          ? _value.fetchPersonalState
          : fetchPersonalState // ignore: cast_nullable_to_non_nullable
              as FetchPersonalState,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FetchPersonalStateCopyWith<$Res> get fetchPersonalState {
    return $FetchPersonalStateCopyWith<$Res>(_value.fetchPersonalState,
        (value) {
      return _then(_value.copyWith(fetchPersonalState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountStateImplCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$AccountStateImplCopyWith(
          _$AccountStateImpl value, $Res Function(_$AccountStateImpl) then) =
      __$$AccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FetchPersonalState fetchPersonalState, bool isEdit});

  @override
  $FetchPersonalStateCopyWith<$Res> get fetchPersonalState;
}

/// @nodoc
class __$$AccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountStateImpl>
    implements _$$AccountStateImplCopyWith<$Res> {
  __$$AccountStateImplCopyWithImpl(
      _$AccountStateImpl _value, $Res Function(_$AccountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchPersonalState = null,
    Object? isEdit = null,
  }) {
    return _then(_$AccountStateImpl(
      fetchPersonalState: null == fetchPersonalState
          ? _value.fetchPersonalState
          : fetchPersonalState // ignore: cast_nullable_to_non_nullable
              as FetchPersonalState,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AccountStateImpl implements _AccountState {
  const _$AccountStateImpl(
      {this.fetchPersonalState = const FetchPersonalState.loading(),
      this.isEdit = false});

  @override
  @JsonKey()
  final FetchPersonalState fetchPersonalState;
  @override
  @JsonKey()
  final bool isEdit;

  @override
  String toString() {
    return 'AccountState(fetchPersonalState: $fetchPersonalState, isEdit: $isEdit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStateImpl &&
            (identical(other.fetchPersonalState, fetchPersonalState) ||
                other.fetchPersonalState == fetchPersonalState) &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchPersonalState, isEdit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountStateImplCopyWith<_$AccountStateImpl> get copyWith =>
      __$$AccountStateImplCopyWithImpl<_$AccountStateImpl>(this, _$identity);
}

abstract class _AccountState implements AccountState {
  const factory _AccountState(
      {final FetchPersonalState fetchPersonalState,
      final bool isEdit}) = _$AccountStateImpl;

  @override
  FetchPersonalState get fetchPersonalState;
  @override
  bool get isEdit;
  @override
  @JsonKey(ignore: true)
  _$$AccountStateImplCopyWith<_$AccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchPersonalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Accounts account) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Accounts account)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Accounts account)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchPersonalStateLoading value) loading,
    required TResult Function(FetchPersonalStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchPersonalStateLoading value)? loading,
    TResult? Function(FetchPersonalStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPersonalStateLoading value)? loading,
    TResult Function(FetchPersonalStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchPersonalStateCopyWith<$Res> {
  factory $FetchPersonalStateCopyWith(
          FetchPersonalState value, $Res Function(FetchPersonalState) then) =
      _$FetchPersonalStateCopyWithImpl<$Res, FetchPersonalState>;
}

/// @nodoc
class _$FetchPersonalStateCopyWithImpl<$Res, $Val extends FetchPersonalState>
    implements $FetchPersonalStateCopyWith<$Res> {
  _$FetchPersonalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchPersonalStateLoadingImplCopyWith<$Res> {
  factory _$$FetchPersonalStateLoadingImplCopyWith(
          _$FetchPersonalStateLoadingImpl value,
          $Res Function(_$FetchPersonalStateLoadingImpl) then) =
      __$$FetchPersonalStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchPersonalStateLoadingImplCopyWithImpl<$Res>
    extends _$FetchPersonalStateCopyWithImpl<$Res,
        _$FetchPersonalStateLoadingImpl>
    implements _$$FetchPersonalStateLoadingImplCopyWith<$Res> {
  __$$FetchPersonalStateLoadingImplCopyWithImpl(
      _$FetchPersonalStateLoadingImpl _value,
      $Res Function(_$FetchPersonalStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchPersonalStateLoadingImpl implements FetchPersonalStateLoading {
  const _$FetchPersonalStateLoadingImpl();

  @override
  String toString() {
    return 'FetchPersonalState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPersonalStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Accounts account) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Accounts account)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Accounts account)? loaded,
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
    required TResult Function(FetchPersonalStateLoading value) loading,
    required TResult Function(FetchPersonalStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchPersonalStateLoading value)? loading,
    TResult? Function(FetchPersonalStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPersonalStateLoading value)? loading,
    TResult Function(FetchPersonalStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FetchPersonalStateLoading implements FetchPersonalState {
  const factory FetchPersonalStateLoading() = _$FetchPersonalStateLoadingImpl;
}

/// @nodoc
abstract class _$$FetchPersonalStateLoadedImplCopyWith<$Res> {
  factory _$$FetchPersonalStateLoadedImplCopyWith(
          _$FetchPersonalStateLoadedImpl value,
          $Res Function(_$FetchPersonalStateLoadedImpl) then) =
      __$$FetchPersonalStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Accounts account});

  $AccountsCopyWith<$Res> get account;
}

/// @nodoc
class __$$FetchPersonalStateLoadedImplCopyWithImpl<$Res>
    extends _$FetchPersonalStateCopyWithImpl<$Res,
        _$FetchPersonalStateLoadedImpl>
    implements _$$FetchPersonalStateLoadedImplCopyWith<$Res> {
  __$$FetchPersonalStateLoadedImplCopyWithImpl(
      _$FetchPersonalStateLoadedImpl _value,
      $Res Function(_$FetchPersonalStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$FetchPersonalStateLoadedImpl(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Accounts,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountsCopyWith<$Res> get account {
    return $AccountsCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

/// @nodoc

class _$FetchPersonalStateLoadedImpl implements FetchPersonalStateLoaded {
  const _$FetchPersonalStateLoadedImpl(this.account);

  @override
  final Accounts account;

  @override
  String toString() {
    return 'FetchPersonalState.loaded(account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPersonalStateLoadedImpl &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPersonalStateLoadedImplCopyWith<_$FetchPersonalStateLoadedImpl>
      get copyWith => __$$FetchPersonalStateLoadedImplCopyWithImpl<
          _$FetchPersonalStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Accounts account) loaded,
  }) {
    return loaded(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Accounts account)? loaded,
  }) {
    return loaded?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Accounts account)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchPersonalStateLoading value) loading,
    required TResult Function(FetchPersonalStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchPersonalStateLoading value)? loading,
    TResult? Function(FetchPersonalStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPersonalStateLoading value)? loading,
    TResult Function(FetchPersonalStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FetchPersonalStateLoaded implements FetchPersonalState {
  const factory FetchPersonalStateLoaded(final Accounts account) =
      _$FetchPersonalStateLoadedImpl;

  Accounts get account;
  @JsonKey(ignore: true)
  _$$FetchPersonalStateLoadedImplCopyWith<_$FetchPersonalStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
