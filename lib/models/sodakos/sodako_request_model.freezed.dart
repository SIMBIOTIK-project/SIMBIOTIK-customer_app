// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sodako_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SodakoRequestModel {
  @JsonKey(name: 'id_user')
  String? get idUser;
  @JsonKey(name: 'price')
  double? get price;

  /// Create a copy of SodakoRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SodakoRequestModelCopyWith<SodakoRequestModel> get copyWith =>
      _$SodakoRequestModelCopyWithImpl<SodakoRequestModel>(
          this as SodakoRequestModel, _$identity);

  /// Serializes this SodakoRequestModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SodakoRequestModel &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idUser, price);

  @override
  String toString() {
    return 'SodakoRequestModel(idUser: $idUser, price: $price)';
  }
}

/// @nodoc
abstract mixin class $SodakoRequestModelCopyWith<$Res> {
  factory $SodakoRequestModelCopyWith(
          SodakoRequestModel value, $Res Function(SodakoRequestModel) _then) =
      _$SodakoRequestModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_user') String? idUser,
      @JsonKey(name: 'price') double? price});
}

/// @nodoc
class _$SodakoRequestModelCopyWithImpl<$Res>
    implements $SodakoRequestModelCopyWith<$Res> {
  _$SodakoRequestModelCopyWithImpl(this._self, this._then);

  final SodakoRequestModel _self;
  final $Res Function(SodakoRequestModel) _then;

  /// Create a copy of SodakoRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUser = freezed,
    Object? price = freezed,
  }) {
    return _then(_self.copyWith(
      idUser: freezed == idUser
          ? _self.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SodakoRequestModel].
extension SodakoRequestModelPatterns on SodakoRequestModel {
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
    TResult Function(_SodakoRequestModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SodakoRequestModel() when $default != null:
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
    TResult Function(_SodakoRequestModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SodakoRequestModel():
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
    TResult? Function(_SodakoRequestModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SodakoRequestModel() when $default != null:
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
    TResult Function(@JsonKey(name: 'id_user') String? idUser,
            @JsonKey(name: 'price') double? price)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SodakoRequestModel() when $default != null:
        return $default(_that.idUser, _that.price);
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
    TResult Function(@JsonKey(name: 'id_user') String? idUser,
            @JsonKey(name: 'price') double? price)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SodakoRequestModel():
        return $default(_that.idUser, _that.price);
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
    TResult? Function(@JsonKey(name: 'id_user') String? idUser,
            @JsonKey(name: 'price') double? price)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SodakoRequestModel() when $default != null:
        return $default(_that.idUser, _that.price);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SodakoRequestModel implements SodakoRequestModel {
  const _SodakoRequestModel(
      {@JsonKey(name: 'id_user') this.idUser,
      @JsonKey(name: 'price') this.price});
  factory _SodakoRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SodakoRequestModelFromJson(json);

  @override
  @JsonKey(name: 'id_user')
  final String? idUser;
  @override
  @JsonKey(name: 'price')
  final double? price;

  /// Create a copy of SodakoRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SodakoRequestModelCopyWith<_SodakoRequestModel> get copyWith =>
      __$SodakoRequestModelCopyWithImpl<_SodakoRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SodakoRequestModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SodakoRequestModel &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idUser, price);

  @override
  String toString() {
    return 'SodakoRequestModel(idUser: $idUser, price: $price)';
  }
}

/// @nodoc
abstract mixin class _$SodakoRequestModelCopyWith<$Res>
    implements $SodakoRequestModelCopyWith<$Res> {
  factory _$SodakoRequestModelCopyWith(
          _SodakoRequestModel value, $Res Function(_SodakoRequestModel) _then) =
      __$SodakoRequestModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_user') String? idUser,
      @JsonKey(name: 'price') double? price});
}

/// @nodoc
class __$SodakoRequestModelCopyWithImpl<$Res>
    implements _$SodakoRequestModelCopyWith<$Res> {
  __$SodakoRequestModelCopyWithImpl(this._self, this._then);

  final _SodakoRequestModel _self;
  final $Res Function(_SodakoRequestModel) _then;

  /// Create a copy of SodakoRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? idUser = freezed,
    Object? price = freezed,
  }) {
    return _then(_SodakoRequestModel(
      idUser: freezed == idUser
          ? _self.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

// dart format on
