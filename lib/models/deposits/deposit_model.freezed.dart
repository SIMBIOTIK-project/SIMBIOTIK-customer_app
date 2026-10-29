// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deposit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DepositModel {
  @JsonKey(name: 'id')
  int? get id;
  @JsonKey(name: 'id_user')
  String? get idUser;
  @JsonKey(name: 'id_wastetype')
  int? get idWastetype;
  @JsonKey(name: 'weight')
  double? get weight;
  @JsonKey(name: 'price')
  double? get price;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @JsonKey(name: 'user')
  UserModel? get user;
  @JsonKey(name: 'wastetype')
  WasteTypesModel? get wasteType;
  @JsonKey(name: 'created_by')
  String? get createdBy;

  /// Create a copy of DepositModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DepositModelCopyWith<DepositModel> get copyWith =>
      _$DepositModelCopyWithImpl<DepositModel>(
          this as DepositModel, _$identity);

  /// Serializes this DepositModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DepositModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.idWastetype, idWastetype) ||
                other.idWastetype == idWastetype) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.wasteType, wasteType) ||
                other.wasteType == wasteType) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, idUser, idWastetype, weight,
      price, createdAt, updatedAt, user, wasteType, createdBy);

  @override
  String toString() {
    return 'DepositModel(id: $id, idUser: $idUser, idWastetype: $idWastetype, weight: $weight, price: $price, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, wasteType: $wasteType, createdBy: $createdBy)';
  }
}

/// @nodoc
abstract mixin class $DepositModelCopyWith<$Res> {
  factory $DepositModelCopyWith(
          DepositModel value, $Res Function(DepositModel) _then) =
      _$DepositModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'id_user') String? idUser,
      @JsonKey(name: 'id_wastetype') int? idWastetype,
      @JsonKey(name: 'weight') double? weight,
      @JsonKey(name: 'price') double? price,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'user') UserModel? user,
      @JsonKey(name: 'wastetype') WasteTypesModel? wasteType,
      @JsonKey(name: 'created_by') String? createdBy});

  $UserModelCopyWith<$Res>? get user;
  $WasteTypesModelCopyWith<$Res>? get wasteType;
}

/// @nodoc
class _$DepositModelCopyWithImpl<$Res> implements $DepositModelCopyWith<$Res> {
  _$DepositModelCopyWithImpl(this._self, this._then);

  final DepositModel _self;
  final $Res Function(DepositModel) _then;

  /// Create a copy of DepositModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idUser = freezed,
    Object? idWastetype = freezed,
    Object? weight = freezed,
    Object? price = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? wasteType = freezed,
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
      idWastetype: freezed == idWastetype
          ? _self.idWastetype
          : idWastetype // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
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
      wasteType: freezed == wasteType
          ? _self.wasteType
          : wasteType // ignore: cast_nullable_to_non_nullable
              as WasteTypesModel?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of DepositModel
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

  /// Create a copy of DepositModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WasteTypesModelCopyWith<$Res>? get wasteType {
    if (_self.wasteType == null) {
      return null;
    }

    return $WasteTypesModelCopyWith<$Res>(_self.wasteType!, (value) {
      return _then(_self.copyWith(wasteType: value));
    });
  }
}

/// Adds pattern-matching-related methods to [DepositModel].
extension DepositModelPatterns on DepositModel {
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
    TResult Function(_DepositModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DepositModel() when $default != null:
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
    TResult Function(_DepositModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DepositModel():
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
    TResult? Function(_DepositModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DepositModel() when $default != null:
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
            @JsonKey(name: 'id_wastetype') int? idWastetype,
            @JsonKey(name: 'weight') double? weight,
            @JsonKey(name: 'price') double? price,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt,
            @JsonKey(name: 'user') UserModel? user,
            @JsonKey(name: 'wastetype') WasteTypesModel? wasteType,
            @JsonKey(name: 'created_by') String? createdBy)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DepositModel() when $default != null:
        return $default(
            _that.id,
            _that.idUser,
            _that.idWastetype,
            _that.weight,
            _that.price,
            _that.createdAt,
            _that.updatedAt,
            _that.user,
            _that.wasteType,
            _that.createdBy);
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
            @JsonKey(name: 'id_wastetype') int? idWastetype,
            @JsonKey(name: 'weight') double? weight,
            @JsonKey(name: 'price') double? price,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt,
            @JsonKey(name: 'user') UserModel? user,
            @JsonKey(name: 'wastetype') WasteTypesModel? wasteType,
            @JsonKey(name: 'created_by') String? createdBy)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DepositModel():
        return $default(
            _that.id,
            _that.idUser,
            _that.idWastetype,
            _that.weight,
            _that.price,
            _that.createdAt,
            _that.updatedAt,
            _that.user,
            _that.wasteType,
            _that.createdBy);
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
            @JsonKey(name: 'id_wastetype') int? idWastetype,
            @JsonKey(name: 'weight') double? weight,
            @JsonKey(name: 'price') double? price,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt,
            @JsonKey(name: 'user') UserModel? user,
            @JsonKey(name: 'wastetype') WasteTypesModel? wasteType,
            @JsonKey(name: 'created_by') String? createdBy)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DepositModel() when $default != null:
        return $default(
            _that.id,
            _that.idUser,
            _that.idWastetype,
            _that.weight,
            _that.price,
            _that.createdAt,
            _that.updatedAt,
            _that.user,
            _that.wasteType,
            _that.createdBy);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DepositModel implements DepositModel {
  const _DepositModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'id_user') this.idUser,
      @JsonKey(name: 'id_wastetype') this.idWastetype,
      @JsonKey(name: 'weight') this.weight,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'wastetype') this.wasteType,
      @JsonKey(name: 'created_by') this.createdBy});
  factory _DepositModel.fromJson(Map<String, dynamic> json) =>
      _$DepositModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'id_user')
  final String? idUser;
  @override
  @JsonKey(name: 'id_wastetype')
  final int? idWastetype;
  @override
  @JsonKey(name: 'weight')
  final double? weight;
  @override
  @JsonKey(name: 'price')
  final double? price;
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
  @JsonKey(name: 'wastetype')
  final WasteTypesModel? wasteType;
  @override
  @JsonKey(name: 'created_by')
  final String? createdBy;

  /// Create a copy of DepositModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DepositModelCopyWith<_DepositModel> get copyWith =>
      __$DepositModelCopyWithImpl<_DepositModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DepositModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DepositModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.idWastetype, idWastetype) ||
                other.idWastetype == idWastetype) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.wasteType, wasteType) ||
                other.wasteType == wasteType) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, idUser, idWastetype, weight,
      price, createdAt, updatedAt, user, wasteType, createdBy);

  @override
  String toString() {
    return 'DepositModel(id: $id, idUser: $idUser, idWastetype: $idWastetype, weight: $weight, price: $price, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, wasteType: $wasteType, createdBy: $createdBy)';
  }
}

/// @nodoc
abstract mixin class _$DepositModelCopyWith<$Res>
    implements $DepositModelCopyWith<$Res> {
  factory _$DepositModelCopyWith(
          _DepositModel value, $Res Function(_DepositModel) _then) =
      __$DepositModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'id_user') String? idUser,
      @JsonKey(name: 'id_wastetype') int? idWastetype,
      @JsonKey(name: 'weight') double? weight,
      @JsonKey(name: 'price') double? price,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'user') UserModel? user,
      @JsonKey(name: 'wastetype') WasteTypesModel? wasteType,
      @JsonKey(name: 'created_by') String? createdBy});

  @override
  $UserModelCopyWith<$Res>? get user;
  @override
  $WasteTypesModelCopyWith<$Res>? get wasteType;
}

/// @nodoc
class __$DepositModelCopyWithImpl<$Res>
    implements _$DepositModelCopyWith<$Res> {
  __$DepositModelCopyWithImpl(this._self, this._then);

  final _DepositModel _self;
  final $Res Function(_DepositModel) _then;

  /// Create a copy of DepositModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? idUser = freezed,
    Object? idWastetype = freezed,
    Object? weight = freezed,
    Object? price = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? wasteType = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_DepositModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idUser: freezed == idUser
          ? _self.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
      idWastetype: freezed == idWastetype
          ? _self.idWastetype
          : idWastetype // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
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
      wasteType: freezed == wasteType
          ? _self.wasteType
          : wasteType // ignore: cast_nullable_to_non_nullable
              as WasteTypesModel?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of DepositModel
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

  /// Create a copy of DepositModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WasteTypesModelCopyWith<$Res>? get wasteType {
    if (_self.wasteType == null) {
      return null;
    }

    return $WasteTypesModelCopyWith<$Res>(_self.wasteType!, (value) {
      return _then(_self.copyWith(wasteType: value));
    });
  }
}

// dart format on
