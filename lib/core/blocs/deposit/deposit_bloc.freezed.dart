// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deposit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DepositEvent {
  String? get idUser;

  /// Create a copy of DepositEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DepositEventCopyWith<DepositEvent> get copyWith =>
      _$DepositEventCopyWithImpl<DepositEvent>(
          this as DepositEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DepositEvent &&
            (identical(other.idUser, idUser) || other.idUser == idUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idUser);

  @override
  String toString() {
    return 'DepositEvent(idUser: $idUser)';
  }
}

/// @nodoc
abstract mixin class $DepositEventCopyWith<$Res> {
  factory $DepositEventCopyWith(
          DepositEvent value, $Res Function(DepositEvent) _then) =
      _$DepositEventCopyWithImpl;
  @useResult
  $Res call({String? idUser});
}

/// @nodoc
class _$DepositEventCopyWithImpl<$Res> implements $DepositEventCopyWith<$Res> {
  _$DepositEventCopyWithImpl(this._self, this._then);

  final DepositEvent _self;
  final $Res Function(DepositEvent) _then;

  /// Create a copy of DepositEvent
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

/// Adds pattern-matching-related methods to [DepositEvent].
extension DepositEventPatterns on DepositEvent {
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
    TResult Function(String? idUser, int page, String? wasteTypeId,
            String? date, String? startDate, String? endDate)?
        fetch,
    TResult Function(String token, String? idUser)? fetchAll,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Fetch() when fetch != null:
        return fetch(_that.idUser, _that.page, _that.wasteTypeId, _that.date,
            _that.startDate, _that.endDate);
      case _FetchAll() when fetchAll != null:
        return fetchAll(_that.token, _that.idUser);
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
    required TResult Function(String? idUser, int page, String? wasteTypeId,
            String? date, String? startDate, String? endDate)
        fetch,
    required TResult Function(String token, String? idUser) fetchAll,
  }) {
    final _that = this;
    switch (_that) {
      case _Fetch():
        return fetch(_that.idUser, _that.page, _that.wasteTypeId, _that.date,
            _that.startDate, _that.endDate);
      case _FetchAll():
        return fetchAll(_that.token, _that.idUser);
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
    TResult? Function(String? idUser, int page, String? wasteTypeId,
            String? date, String? startDate, String? endDate)?
        fetch,
    TResult? Function(String token, String? idUser)? fetchAll,
  }) {
    final _that = this;
    switch (_that) {
      case _Fetch() when fetch != null:
        return fetch(_that.idUser, _that.page, _that.wasteTypeId, _that.date,
            _that.startDate, _that.endDate);
      case _FetchAll() when fetchAll != null:
        return fetchAll(_that.token, _that.idUser);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Fetch implements DepositEvent {
  const _Fetch(
      {this.idUser = '',
      this.page = 1,
      this.wasteTypeId,
      this.date,
      this.startDate,
      this.endDate});

  @override
  @JsonKey()
  final String? idUser;
  @JsonKey()
  final int page;
  final String? wasteTypeId;
  final String? date;
  final String? startDate;
  final String? endDate;

  /// Create a copy of DepositEvent
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
            (identical(other.wasteTypeId, wasteTypeId) ||
                other.wasteTypeId == wasteTypeId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, idUser, page, wasteTypeId, date, startDate, endDate);

  @override
  String toString() {
    return 'DepositEvent.fetch(idUser: $idUser, page: $page, wasteTypeId: $wasteTypeId, date: $date, startDate: $startDate, endDate: $endDate)';
  }
}

/// @nodoc
abstract mixin class _$FetchCopyWith<$Res>
    implements $DepositEventCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) _then) =
      __$FetchCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? idUser,
      int page,
      String? wasteTypeId,
      String? date,
      String? startDate,
      String? endDate});
}

/// @nodoc
class __$FetchCopyWithImpl<$Res> implements _$FetchCopyWith<$Res> {
  __$FetchCopyWithImpl(this._self, this._then);

  final _Fetch _self;
  final $Res Function(_Fetch) _then;

  /// Create a copy of DepositEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? idUser = freezed,
    Object? page = null,
    Object? wasteTypeId = freezed,
    Object? date = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_Fetch(
      idUser: freezed == idUser
          ? _self.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      wasteTypeId: freezed == wasteTypeId
          ? _self.wasteTypeId
          : wasteTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _FetchAll implements DepositEvent {
  const _FetchAll({required this.token, this.idUser});

  final String token;
  @override
  final String? idUser;

  /// Create a copy of DepositEvent
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
            (identical(other.token, token) || other.token == token) &&
            (identical(other.idUser, idUser) || other.idUser == idUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, idUser);

  @override
  String toString() {
    return 'DepositEvent.fetchAll(token: $token, idUser: $idUser)';
  }
}

/// @nodoc
abstract mixin class _$FetchAllCopyWith<$Res>
    implements $DepositEventCopyWith<$Res> {
  factory _$FetchAllCopyWith(_FetchAll value, $Res Function(_FetchAll) _then) =
      __$FetchAllCopyWithImpl;
  @override
  @useResult
  $Res call({String token, String? idUser});
}

/// @nodoc
class __$FetchAllCopyWithImpl<$Res> implements _$FetchAllCopyWith<$Res> {
  __$FetchAllCopyWithImpl(this._self, this._then);

  final _FetchAll _self;
  final $Res Function(_FetchAll) _then;

  /// Create a copy of DepositEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? token = null,
    Object? idUser = freezed,
  }) {
    return _then(_FetchAll(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      idUser: freezed == idUser
          ? _self.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$DepositState {
  DepositStateStatus get status;
  DepositResponseModel? get data;
  List<DepositModel>? get allData;
  String? get error;

  /// Create a copy of DepositState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DepositStateCopyWith<DepositState> get copyWith =>
      _$DepositStateCopyWithImpl<DepositState>(
          this as DepositState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DepositState &&
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
    return 'DepositState(status: $status, data: $data, allData: $allData, error: $error)';
  }
}

/// @nodoc
abstract mixin class $DepositStateCopyWith<$Res> {
  factory $DepositStateCopyWith(
          DepositState value, $Res Function(DepositState) _then) =
      _$DepositStateCopyWithImpl;
  @useResult
  $Res call(
      {DepositStateStatus status,
      DepositResponseModel? data,
      List<DepositModel>? allData,
      String? error});

  $DepositResponseModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$DepositStateCopyWithImpl<$Res> implements $DepositStateCopyWith<$Res> {
  _$DepositStateCopyWithImpl(this._self, this._then);

  final DepositState _self;
  final $Res Function(DepositState) _then;

  /// Create a copy of DepositState
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
              as DepositStateStatus,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as DepositResponseModel?,
      allData: freezed == allData
          ? _self.allData
          : allData // ignore: cast_nullable_to_non_nullable
              as List<DepositModel>?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of DepositState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepositResponseModelCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $DepositResponseModelCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [DepositState].
extension DepositStatePatterns on DepositState {
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
    TResult Function(_DepositState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DepositState() when $default != null:
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
    TResult Function(_DepositState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DepositState():
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
    TResult? Function(_DepositState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DepositState() when $default != null:
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
    TResult Function(DepositStateStatus status, DepositResponseModel? data,
            List<DepositModel>? allData, String? error)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DepositState() when $default != null:
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
    TResult Function(DepositStateStatus status, DepositResponseModel? data,
            List<DepositModel>? allData, String? error)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DepositState():
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
    TResult? Function(DepositStateStatus status, DepositResponseModel? data,
            List<DepositModel>? allData, String? error)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DepositState() when $default != null:
        return $default(_that.status, _that.data, _that.allData, _that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DepositState implements DepositState {
  const _DepositState(
      {this.status = DepositStateStatus.initial,
      this.data,
      final List<DepositModel>? allData,
      this.error = ''})
      : _allData = allData;

  @override
  @JsonKey()
  final DepositStateStatus status;
  @override
  final DepositResponseModel? data;
  final List<DepositModel>? _allData;
  @override
  List<DepositModel>? get allData {
    final value = _allData;
    if (value == null) return null;
    if (_allData is EqualUnmodifiableListView) return _allData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final String? error;

  /// Create a copy of DepositState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DepositStateCopyWith<_DepositState> get copyWith =>
      __$DepositStateCopyWithImpl<_DepositState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DepositState &&
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
    return 'DepositState(status: $status, data: $data, allData: $allData, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$DepositStateCopyWith<$Res>
    implements $DepositStateCopyWith<$Res> {
  factory _$DepositStateCopyWith(
          _DepositState value, $Res Function(_DepositState) _then) =
      __$DepositStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {DepositStateStatus status,
      DepositResponseModel? data,
      List<DepositModel>? allData,
      String? error});

  @override
  $DepositResponseModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$DepositStateCopyWithImpl<$Res>
    implements _$DepositStateCopyWith<$Res> {
  __$DepositStateCopyWithImpl(this._self, this._then);

  final _DepositState _self;
  final $Res Function(_DepositState) _then;

  /// Create a copy of DepositState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? allData = freezed,
    Object? error = freezed,
  }) {
    return _then(_DepositState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DepositStateStatus,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as DepositResponseModel?,
      allData: freezed == allData
          ? _self._allData
          : allData // ignore: cast_nullable_to_non_nullable
              as List<DepositModel>?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of DepositState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepositResponseModelCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $DepositResponseModelCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
