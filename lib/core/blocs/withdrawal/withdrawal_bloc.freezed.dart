// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdrawal_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WithdrawalEvent {
  String get token => throw _privateConstructorUsedError;
  String? get idUser => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String? idUser) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, String? idUser)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String? idUser)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WithdrawalEventCopyWith<WithdrawalEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawalEventCopyWith<$Res> {
  factory $WithdrawalEventCopyWith(
          WithdrawalEvent value, $Res Function(WithdrawalEvent) then) =
      _$WithdrawalEventCopyWithImpl<$Res, WithdrawalEvent>;
  @useResult
  $Res call({String token, String? idUser});
}

/// @nodoc
class _$WithdrawalEventCopyWithImpl<$Res, $Val extends WithdrawalEvent>
    implements $WithdrawalEventCopyWith<$Res> {
  _$WithdrawalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? idUser = freezed,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res>
    implements $WithdrawalEventCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String? idUser});
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$WithdrawalEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? idUser = freezed,
  }) {
    return _then(_$FetchImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl({required this.token, this.idUser});

  @override
  final String token;
  @override
  final String? idUser;

  @override
  String toString() {
    return 'WithdrawalEvent.fetch(token: $token, idUser: $idUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.idUser, idUser) || other.idUser == idUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, idUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      __$$FetchImplCopyWithImpl<_$FetchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String? idUser) fetch,
  }) {
    return fetch(token, idUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, String? idUser)? fetch,
  }) {
    return fetch?.call(token, idUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String? idUser)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(token, idUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements WithdrawalEvent {
  const factory _Fetch({required final String token, final String? idUser}) =
      _$FetchImpl;

  @override
  String get token;
  @override
  String? get idUser;
  @override
  @JsonKey(ignore: true)
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WithdrawalState {
  WithdrawalStateStatus get status => throw _privateConstructorUsedError;
  WithdrawalModel? get data => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WithdrawalStateCopyWith<WithdrawalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawalStateCopyWith<$Res> {
  factory $WithdrawalStateCopyWith(
          WithdrawalState value, $Res Function(WithdrawalState) then) =
      _$WithdrawalStateCopyWithImpl<$Res, WithdrawalState>;
  @useResult
  $Res call(
      {WithdrawalStateStatus status, WithdrawalModel? data, String? error});

  $WithdrawalModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$WithdrawalStateCopyWithImpl<$Res, $Val extends WithdrawalState>
    implements $WithdrawalStateCopyWith<$Res> {
  _$WithdrawalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WithdrawalStateStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WithdrawalModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WithdrawalModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $WithdrawalModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WithdrawalStateImplCopyWith<$Res>
    implements $WithdrawalStateCopyWith<$Res> {
  factory _$$WithdrawalStateImplCopyWith(_$WithdrawalStateImpl value,
          $Res Function(_$WithdrawalStateImpl) then) =
      __$$WithdrawalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WithdrawalStateStatus status, WithdrawalModel? data, String? error});

  @override
  $WithdrawalModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$WithdrawalStateImplCopyWithImpl<$Res>
    extends _$WithdrawalStateCopyWithImpl<$Res, _$WithdrawalStateImpl>
    implements _$$WithdrawalStateImplCopyWith<$Res> {
  __$$WithdrawalStateImplCopyWithImpl(
      _$WithdrawalStateImpl _value, $Res Function(_$WithdrawalStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_$WithdrawalStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WithdrawalStateStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WithdrawalModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$WithdrawalStateImpl implements _WithdrawalState {
  const _$WithdrawalStateImpl(
      {this.status = WithdrawalStateStatus.initial,
      this.data,
      this.error = ''});

  @override
  @JsonKey()
  final WithdrawalStateStatus status;
  @override
  final WithdrawalModel? data;
  @override
  @JsonKey()
  final String? error;

  @override
  String toString() {
    return 'WithdrawalState(status: $status, data: $data, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithdrawalStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, data, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WithdrawalStateImplCopyWith<_$WithdrawalStateImpl> get copyWith =>
      __$$WithdrawalStateImplCopyWithImpl<_$WithdrawalStateImpl>(
          this, _$identity);
}

abstract class _WithdrawalState implements WithdrawalState {
  const factory _WithdrawalState(
      {final WithdrawalStateStatus status,
      final WithdrawalModel? data,
      final String? error}) = _$WithdrawalStateImpl;

  @override
  WithdrawalStateStatus get status;
  @override
  WithdrawalModel? get data;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$WithdrawalStateImplCopyWith<_$WithdrawalStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
