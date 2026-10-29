// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sodako_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SodakoEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SodakoEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SodakoEvent()';
  }
}

/// @nodoc
class $SodakoEventCopyWith<$Res> {
  $SodakoEventCopyWith(SodakoEvent _, $Res Function(SodakoEvent) __);
}

/// Adds pattern-matching-related methods to [SodakoEvent].
extension SodakoEventPatterns on SodakoEvent {
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
    TResult Function(_Create value)? create,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Fetch() when fetch != null:
        return fetch(_that);
      case _Create() when create != null:
        return create(_that);
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
    required TResult Function(_Create value) create,
  }) {
    final _that = this;
    switch (_that) {
      case _Fetch():
        return fetch(_that);
      case _Create():
        return create(_that);
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
    TResult? Function(_Create value)? create,
  }) {
    final _that = this;
    switch (_that) {
      case _Fetch() when fetch != null:
        return fetch(_that);
      case _Create() when create != null:
        return create(_that);
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
    TResult Function(String? idUser, int? page)? fetch,
    TResult Function(SodakoRequestModel request)? create,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Fetch() when fetch != null:
        return fetch(_that.idUser, _that.page);
      case _Create() when create != null:
        return create(_that.request);
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
    required TResult Function(String? idUser, int? page) fetch,
    required TResult Function(SodakoRequestModel request) create,
  }) {
    final _that = this;
    switch (_that) {
      case _Fetch():
        return fetch(_that.idUser, _that.page);
      case _Create():
        return create(_that.request);
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
    TResult? Function(String? idUser, int? page)? fetch,
    TResult? Function(SodakoRequestModel request)? create,
  }) {
    final _that = this;
    switch (_that) {
      case _Fetch() when fetch != null:
        return fetch(_that.idUser, _that.page);
      case _Create() when create != null:
        return create(_that.request);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Fetch implements SodakoEvent {
  const _Fetch({this.idUser, this.page});

  final String? idUser;
  final int? page;

  /// Create a copy of SodakoEvent
  /// with the given fields replaced by the non-null parameter values.
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
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idUser, page);

  @override
  String toString() {
    return 'SodakoEvent.fetch(idUser: $idUser, page: $page)';
  }
}

/// @nodoc
abstract mixin class _$FetchCopyWith<$Res>
    implements $SodakoEventCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) _then) =
      __$FetchCopyWithImpl;
  @useResult
  $Res call({String? idUser, int? page});
}

/// @nodoc
class __$FetchCopyWithImpl<$Res> implements _$FetchCopyWith<$Res> {
  __$FetchCopyWithImpl(this._self, this._then);

  final _Fetch _self;
  final $Res Function(_Fetch) _then;

  /// Create a copy of SodakoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? idUser = freezed,
    Object? page = freezed,
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
    ));
  }
}

/// @nodoc

class _Create implements SodakoEvent {
  const _Create({required this.request});

  final SodakoRequestModel request;

  /// Create a copy of SodakoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateCopyWith<_Create> get copyWith =>
      __$CreateCopyWithImpl<_Create>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Create &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @override
  String toString() {
    return 'SodakoEvent.create(request: $request)';
  }
}

/// @nodoc
abstract mixin class _$CreateCopyWith<$Res>
    implements $SodakoEventCopyWith<$Res> {
  factory _$CreateCopyWith(_Create value, $Res Function(_Create) _then) =
      __$CreateCopyWithImpl;
  @useResult
  $Res call({SodakoRequestModel request});

  $SodakoRequestModelCopyWith<$Res> get request;
}

/// @nodoc
class __$CreateCopyWithImpl<$Res> implements _$CreateCopyWith<$Res> {
  __$CreateCopyWithImpl(this._self, this._then);

  final _Create _self;
  final $Res Function(_Create) _then;

  /// Create a copy of SodakoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? request = null,
  }) {
    return _then(_Create(
      request: null == request
          ? _self.request
          : request // ignore: cast_nullable_to_non_nullable
              as SodakoRequestModel,
    ));
  }

  /// Create a copy of SodakoEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SodakoRequestModelCopyWith<$Res> get request {
    return $SodakoRequestModelCopyWith<$Res>(_self.request, (value) {
      return _then(_self.copyWith(request: value));
    });
  }
}

/// @nodoc
mixin _$SodakoState {
  SodakoStateStatus get status;
  SodakoResponseModel? get data;
  String? get error;

  /// Create a copy of SodakoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SodakoStateCopyWith<SodakoState> get copyWith =>
      _$SodakoStateCopyWithImpl<SodakoState>(this as SodakoState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SodakoState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, data, error);

  @override
  String toString() {
    return 'SodakoState(status: $status, data: $data, error: $error)';
  }
}

/// @nodoc
abstract mixin class $SodakoStateCopyWith<$Res> {
  factory $SodakoStateCopyWith(
          SodakoState value, $Res Function(SodakoState) _then) =
      _$SodakoStateCopyWithImpl;
  @useResult
  $Res call(
      {SodakoStateStatus status, SodakoResponseModel? data, String? error});

  $SodakoResponseModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$SodakoStateCopyWithImpl<$Res> implements $SodakoStateCopyWith<$Res> {
  _$SodakoStateCopyWithImpl(this._self, this._then);

  final SodakoState _self;
  final $Res Function(SodakoState) _then;

  /// Create a copy of SodakoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SodakoStateStatus,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as SodakoResponseModel?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of SodakoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SodakoResponseModelCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $SodakoResponseModelCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SodakoState].
extension SodakoStatePatterns on SodakoState {
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
    TResult Function(_SodakoState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SodakoState() when $default != null:
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
    TResult Function(_SodakoState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SodakoState():
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
    TResult? Function(_SodakoState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SodakoState() when $default != null:
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
            SodakoStateStatus status, SodakoResponseModel? data, String? error)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SodakoState() when $default != null:
        return $default(_that.status, _that.data, _that.error);
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
            SodakoStateStatus status, SodakoResponseModel? data, String? error)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SodakoState():
        return $default(_that.status, _that.data, _that.error);
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
            SodakoStateStatus status, SodakoResponseModel? data, String? error)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SodakoState() when $default != null:
        return $default(_that.status, _that.data, _that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SodakoState implements SodakoState {
  const _SodakoState(
      {this.status = SodakoStateStatus.initial, this.data, this.error = ''});

  @override
  @JsonKey()
  final SodakoStateStatus status;
  @override
  final SodakoResponseModel? data;
  @override
  @JsonKey()
  final String? error;

  /// Create a copy of SodakoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SodakoStateCopyWith<_SodakoState> get copyWith =>
      __$SodakoStateCopyWithImpl<_SodakoState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SodakoState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, data, error);

  @override
  String toString() {
    return 'SodakoState(status: $status, data: $data, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$SodakoStateCopyWith<$Res>
    implements $SodakoStateCopyWith<$Res> {
  factory _$SodakoStateCopyWith(
          _SodakoState value, $Res Function(_SodakoState) _then) =
      __$SodakoStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {SodakoStateStatus status, SodakoResponseModel? data, String? error});

  @override
  $SodakoResponseModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$SodakoStateCopyWithImpl<$Res> implements _$SodakoStateCopyWith<$Res> {
  __$SodakoStateCopyWithImpl(this._self, this._then);

  final _SodakoState _self;
  final $Res Function(_SodakoState) _then;

  /// Create a copy of SodakoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_SodakoState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SodakoStateStatus,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as SodakoResponseModel?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of SodakoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SodakoResponseModelCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $SodakoResponseModelCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
