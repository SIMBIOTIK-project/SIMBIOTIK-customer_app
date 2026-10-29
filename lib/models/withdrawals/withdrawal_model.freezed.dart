// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdrawal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WithdrawalModel {
  @JsonKey(name: 'id')
  int? get id;
  @JsonKey(name: 'id_user')
  String? get idUser;
  @JsonKey(name: 'price')
  double? get price;
  @JsonKey(name: 'status')
  String? get status;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @JsonKey(name: 'user')
  UserModel? get user;
  @JsonKey(name: 'created_by')
  String? get createdBy;

  /// Create a copy of WithdrawalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WithdrawalModelCopyWith<WithdrawalModel> get copyWith =>
      _$WithdrawalModelCopyWithImpl<WithdrawalModel>(
          this as WithdrawalModel, _$identity);

  /// Serializes this WithdrawalModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WithdrawalModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, idUser, price, status,
      createdAt, updatedAt, user, createdBy);

  @override
  String toString() {
    return 'WithdrawalModel(id: $id, idUser: $idUser, price: $price, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, createdBy: $createdBy)';
  }
}

/// @nodoc
abstract mixin class $WithdrawalModelCopyWith<$Res> {
  factory $WithdrawalModelCopyWith(
          WithdrawalModel value, $Res Function(WithdrawalModel) _then) =
      _$WithdrawalModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'id_user') String? idUser,
      @JsonKey(name: 'price') double? price,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'user') UserModel? user,
      @JsonKey(name: 'created_by') String? createdBy});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$WithdrawalModelCopyWithImpl<$Res>
    implements $WithdrawalModelCopyWith<$Res> {
  _$WithdrawalModelCopyWithImpl(this._self, this._then);

  final WithdrawalModel _self;
  final $Res Function(WithdrawalModel) _then;

  /// Create a copy of WithdrawalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idUser = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idUser: freezed == idUser
          ? _self.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of WithdrawalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// Adds pattern-matching-related methods to [WithdrawalModel].
extension WithdrawalModelPatterns on WithdrawalModel {
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
    TResult Function(_WithdrawalModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WithdrawalModel() when $default != null:
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
    TResult Function(_WithdrawalModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WithdrawalModel():
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
    TResult? Function(_WithdrawalModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WithdrawalModel() when $default != null:
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
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'id_user') String? idUser,
            @JsonKey(name: 'price') double? price,
            @JsonKey(name: 'status') String? status,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt,
            @JsonKey(name: 'user') UserModel? user,
            @JsonKey(name: 'created_by') String? createdBy)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WithdrawalModel() when $default != null:
        return $default(_that.id, _that.idUser, _that.price, _that.status,
            _that.createdAt, _that.updatedAt, _that.user, _that.createdBy);
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
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'id_user') String? idUser,
            @JsonKey(name: 'price') double? price,
            @JsonKey(name: 'status') String? status,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt,
            @JsonKey(name: 'user') UserModel? user,
            @JsonKey(name: 'created_by') String? createdBy)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WithdrawalModel():
        return $default(_that.id, _that.idUser, _that.price, _that.status,
            _that.createdAt, _that.updatedAt, _that.user, _that.createdBy);
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
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'id_user') String? idUser,
            @JsonKey(name: 'price') double? price,
            @JsonKey(name: 'status') String? status,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt,
            @JsonKey(name: 'user') UserModel? user,
            @JsonKey(name: 'created_by') String? createdBy)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WithdrawalModel() when $default != null:
        return $default(_that.id, _that.idUser, _that.price, _that.status,
            _that.createdAt, _that.updatedAt, _that.user, _that.createdBy);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _WithdrawalModel implements WithdrawalModel {
  const _WithdrawalModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'id_user') this.idUser,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'created_by') this.createdBy});
  factory _WithdrawalModel.fromJson(Map<String, dynamic> json) =>
      _$WithdrawalModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'id_user')
  final String? idUser;
  @override
  @JsonKey(name: 'price')
  final double? price;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'user')
  final UserModel? user;
  @override
  @JsonKey(name: 'created_by')
  final String? createdBy;

  /// Create a copy of WithdrawalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WithdrawalModelCopyWith<_WithdrawalModel> get copyWith =>
      __$WithdrawalModelCopyWithImpl<_WithdrawalModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WithdrawalModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WithdrawalModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, idUser, price, status,
      createdAt, updatedAt, user, createdBy);

  @override
  String toString() {
    return 'WithdrawalModel(id: $id, idUser: $idUser, price: $price, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, createdBy: $createdBy)';
  }
}

/// @nodoc
abstract mixin class _$WithdrawalModelCopyWith<$Res>
    implements $WithdrawalModelCopyWith<$Res> {
  factory _$WithdrawalModelCopyWith(
          _WithdrawalModel value, $Res Function(_WithdrawalModel) _then) =
      __$WithdrawalModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'id_user') String? idUser,
      @JsonKey(name: 'price') double? price,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'user') UserModel? user,
      @JsonKey(name: 'created_by') String? createdBy});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$WithdrawalModelCopyWithImpl<$Res>
    implements _$WithdrawalModelCopyWith<$Res> {
  __$WithdrawalModelCopyWithImpl(this._self, this._then);

  final _WithdrawalModel _self;
  final $Res Function(_WithdrawalModel) _then;

  /// Create a copy of WithdrawalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? idUser = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_WithdrawalModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idUser: freezed == idUser
          ? _self.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of WithdrawalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

// dart format on
