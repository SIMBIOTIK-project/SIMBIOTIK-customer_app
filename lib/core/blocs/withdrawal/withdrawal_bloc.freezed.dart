// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdrawal_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WithdrawalEvent {
  String? get idUser;

  /// Create a copy of WithdrawalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WithdrawalEventCopyWith<WithdrawalEvent> get copyWith =>
      _$WithdrawalEventCopyWithImpl<WithdrawalEvent>(
          this as WithdrawalEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WithdrawalEvent &&
            (identical(other.idUser, idUser) || other.idUser == idUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idUser);

  @override
  String toString() {
    return 'WithdrawalEvent(idUser: $idUser)';
  }
}

/// @nodoc
abstract mixin class $WithdrawalEventCopyWith<$Res> {
  factory $WithdrawalEventCopyWith(
          WithdrawalEvent value, $Res Function(WithdrawalEvent) _then) =
      _$WithdrawalEventCopyWithImpl;
  @useResult
  $Res call({String? idUser});
}

/// @nodoc
class _$WithdrawalEventCopyWithImpl<$Res>
    implements $WithdrawalEventCopyWith<$Res> {
  _$WithdrawalEventCopyWithImpl(this._self, this._then);

  final WithdrawalEvent _self;
  final $Res Function(WithdrawalEvent) _then;

  /// Create a copy of WithdrawalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUser = freezed,
  }) {
    return _then(_self.copyWith(
      idUser: freezed == idUser
          ? _self.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [WithdrawalEvent].
extension WithdrawalEventPatterns on WithdrawalEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchAll value)? fetchAll,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Fetch() when fetch != null:
        return fetch(_that);
      case _FetchAll() when fetchAll != null:
        return fetchAll(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchAll value) fetchAll,
  }) {
    final _that = this;
    switch (_that) {
      case _Fetch():
        return fetch(_that);
      case _FetchAll():
        return fetchAll(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchAll value)? fetchAll,
  }) {
    final _that = this;
    switch (_that) {
      case _Fetch() when fetch != null:
        return fetch(_that);
      case _FetchAll() when fetchAll != null:
        return fetchAll(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? idUser, int? page, String? date, String? startDate,
            String? endDate)?
        fetch,
    TResult Function(String? idUser)? fetchAll,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Fetch() when fetch != null:
        return fetch(_that.idUser, _that.page, _that.date, _that.startDate,
            _that.endDate);
      case _FetchAll() when fetchAll != null:
        return fetchAll(_that.idUser);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? idUser, int? page, String? date,
            String? startDate, String? endDate)
        fetch,
    required TResult Function(String? idUser) fetchAll,
  }) {
    final _that = this;
    switch (_that) {
      case _Fetch():
        return fetch(_that.idUser, _that.page, _that.date, _that.startDate,
            _that.endDate);
      case _FetchAll():
        return fetchAll(_that.idUser);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? idUser, int? page, String? date,
            String? startDate, String? endDate)?
        fetch,
    TResult? Function(String? idUser)? fetchAll,
  }) {
    final _that = this;
    switch (_that) {
      case _Fetch() when fetch != null:
        return fetch(_that.idUser, _that.page, _that.date, _that.startDate,
            _that.endDate);
      case _FetchAll() when fetchAll != null:
        return fetchAll(_that.idUser);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Fetch implements WithdrawalEvent {
  const _Fetch(
      {this.idUser, this.page, this.date, this.startDate, this.endDate});

  @override
  final String? idUser;
  final int? page;
  final String? date;
  final String? startDate;
  final String? endDate;

  /// Create a copy of WithdrawalEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FetchCopyWith<_Fetch> get copyWith =>
      __$FetchCopyWithImpl<_Fetch>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Fetch &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, idUser, page, date, startDate, endDate);

  @override
  String toString() {
    return 'WithdrawalEvent.fetch(idUser: $idUser, page: $page, date: $date, startDate: $startDate, endDate: $endDate)';
  }
}

/// @nodoc
abstract mixin class _$FetchCopyWith<$Res>
    implements $WithdrawalEventCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) _then) =
      __$FetchCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? idUser,
      int? page,
      String? date,
      String? startDate,
      String? endDate});
}

/// @nodoc
class __$FetchCopyWithImpl<$Res> implements _$FetchCopyWith<$Res> {
  __$FetchCopyWithImpl(this._self, this._then);

  final _Fetch _self;
  final $Res Function(_Fetch) _then;

  /// Create a copy of WithdrawalEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? idUser = freezed,
    Object? page = freezed,
    Object? date = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_Fetch(
      idUser: freezed == idUser
          ? _self.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _FetchAll implements WithdrawalEvent {
  const _FetchAll({this.idUser});

  @override
  final String? idUser;

  /// Create a copy of WithdrawalEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FetchAllCopyWith<_FetchAll> get copyWith =>
      __$FetchAllCopyWithImpl<_FetchAll>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchAll &&
            (identical(other.idUser, idUser) || other.idUser == idUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idUser);

  @override
  String toString() {
    return 'WithdrawalEvent.fetchAll(idUser: $idUser)';
  }
}

/// @nodoc
abstract mixin class _$FetchAllCopyWith<$Res>
    implements $WithdrawalEventCopyWith<$Res> {
  factory _$FetchAllCopyWith(_FetchAll value, $Res Function(_FetchAll) _then) =
      __$FetchAllCopyWithImpl;
  @override
  @useResult
  $Res call({String? idUser});
}

/// @nodoc
class __$FetchAllCopyWithImpl<$Res> implements _$FetchAllCopyWith<$Res> {
  __$FetchAllCopyWithImpl(this._self, this._then);

  final _FetchAll _self;
  final $Res Function(_FetchAll) _then;

  /// Create a copy of WithdrawalEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? idUser = freezed,
  }) {
    return _then(_FetchAll(
      idUser: freezed == idUser
          ? _self.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$WithdrawalState {
  WithdrawalStateStatus get status;
  WithdrawalResponseModel? get data;
  List<WithdrawalModel>? get allData;
  String? get error;

  /// Create a copy of WithdrawalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WithdrawalStateCopyWith<WithdrawalState> get copyWith =>
      _$WithdrawalStateCopyWithImpl<WithdrawalState>(
          this as WithdrawalState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WithdrawalState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other.allData, allData) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, data,
      const DeepCollectionEquality().hash(allData), error);

  @override
  String toString() {
    return 'WithdrawalState(status: $status, data: $data, allData: $allData, error: $error)';
  }
}

/// @nodoc
abstract mixin class $WithdrawalStateCopyWith<$Res> {
  factory $WithdrawalStateCopyWith(
          WithdrawalState value, $Res Function(WithdrawalState) _then) =
      _$WithdrawalStateCopyWithImpl;
  @useResult
  $Res call(
      {WithdrawalStateStatus status,
      WithdrawalResponseModel? data,
      List<WithdrawalModel>? allData,
      String? error});

  $WithdrawalResponseModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$WithdrawalStateCopyWithImpl<$Res>
    implements $WithdrawalStateCopyWith<$Res> {
  _$WithdrawalStateCopyWithImpl(this._self, this._then);

  final WithdrawalState _self;
  final $Res Function(WithdrawalState) _then;

  /// Create a copy of WithdrawalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? allData = freezed,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as WithdrawalStateStatus,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as WithdrawalResponseModel?,
      allData: freezed == allData
          ? _self.allData
          : allData // ignore: cast_nullable_to_non_nullable
              as List<WithdrawalModel>?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of WithdrawalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WithdrawalResponseModelCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $WithdrawalResponseModelCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [WithdrawalState].
extension WithdrawalStatePatterns on WithdrawalState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WithdrawalState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WithdrawalState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WithdrawalState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WithdrawalState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_WithdrawalState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WithdrawalState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            WithdrawalStateStatus status,
            WithdrawalResponseModel? data,
            List<WithdrawalModel>? allData,
            String? error)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WithdrawalState() when $default != null:
        return $default(_that.status, _that.data, _that.allData, _that.error);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            WithdrawalStateStatus status,
            WithdrawalResponseModel? data,
            List<WithdrawalModel>? allData,
            String? error)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WithdrawalState():
        return $default(_that.status, _that.data, _that.allData, _that.error);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            WithdrawalStateStatus status,
            WithdrawalResponseModel? data,
            List<WithdrawalModel>? allData,
            String? error)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WithdrawalState() when $default != null:
        return $default(_that.status, _that.data, _that.allData, _that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _WithdrawalState implements WithdrawalState {
  const _WithdrawalState(
      {this.status = WithdrawalStateStatus.initial,
      this.data,
      final List<WithdrawalModel>? allData,
      this.error = ''})
      : _allData = allData;

  @override
  @JsonKey()
  final WithdrawalStateStatus status;
  @override
  final WithdrawalResponseModel? data;
  final List<WithdrawalModel>? _allData;
  @override
  List<WithdrawalModel>? get allData {
    final value = _allData;
    if (value == null) return null;
    if (_allData is EqualUnmodifiableListView) return _allData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final String? error;

  /// Create a copy of WithdrawalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WithdrawalStateCopyWith<_WithdrawalState> get copyWith =>
      __$WithdrawalStateCopyWithImpl<_WithdrawalState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WithdrawalState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other._allData, _allData) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, data,
      const DeepCollectionEquality().hash(_allData), error);

  @override
  String toString() {
    return 'WithdrawalState(status: $status, data: $data, allData: $allData, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$WithdrawalStateCopyWith<$Res>
    implements $WithdrawalStateCopyWith<$Res> {
  factory _$WithdrawalStateCopyWith(
          _WithdrawalState value, $Res Function(_WithdrawalState) _then) =
      __$WithdrawalStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {WithdrawalStateStatus status,
      WithdrawalResponseModel? data,
      List<WithdrawalModel>? allData,
      String? error});

  @override
  $WithdrawalResponseModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$WithdrawalStateCopyWithImpl<$Res>
    implements _$WithdrawalStateCopyWith<$Res> {
  __$WithdrawalStateCopyWithImpl(this._self, this._then);

  final _WithdrawalState _self;
  final $Res Function(_WithdrawalState) _then;

  /// Create a copy of WithdrawalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? allData = freezed,
    Object? error = freezed,
  }) {
    return _then(_WithdrawalState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as WithdrawalStateStatus,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as WithdrawalResponseModel?,
      allData: freezed == allData
          ? _self._allData
          : allData // ignore: cast_nullable_to_non_nullable
              as List<WithdrawalModel>?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of WithdrawalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WithdrawalResponseModelCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $WithdrawalResponseModelCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
