// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BalanceResponseModel {
  @JsonKey(name: 'success')
  bool? get success;
  @JsonKey(name: 'message')
  String? get message;
  @JsonKey(name: 'data')
  BalanceModel? get result;

  /// Create a copy of BalanceResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BalanceResponseModelCopyWith<BalanceResponseModel> get copyWith =>
      _$BalanceResponseModelCopyWithImpl<BalanceResponseModel>(
          this as BalanceResponseModel, _$identity);

  /// Serializes this BalanceResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BalanceResponseModel &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, result);

  @override
  String toString() {
    return 'BalanceResponseModel(success: $success, message: $message, result: $result)';
  }
}

/// @nodoc
abstract mixin class $BalanceResponseModelCopyWith<$Res> {
  factory $BalanceResponseModelCopyWith(BalanceResponseModel value,
          $Res Function(BalanceResponseModel) _then) =
      _$BalanceResponseModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') BalanceModel? result});

  $BalanceModelCopyWith<$Res>? get result;
}

/// @nodoc
class _$BalanceResponseModelCopyWithImpl<$Res>
    implements $BalanceResponseModelCopyWith<$Res> {
  _$BalanceResponseModelCopyWithImpl(this._self, this._then);

  final BalanceResponseModel _self;
  final $Res Function(BalanceResponseModel) _then;

  /// Create a copy of BalanceResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? result = freezed,
  }) {
    return _then(_self.copyWith(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as BalanceModel?,
    ));
  }

  /// Create a copy of BalanceResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BalanceModelCopyWith<$Res>? get result {
    if (_self.result == null) {
      return null;
    }

    return $BalanceModelCopyWith<$Res>(_self.result!, (value) {
      return _then(_self.copyWith(result: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BalanceResponseModel].
extension BalanceResponseModelPatterns on BalanceResponseModel {
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
    TResult Function(_BalanceResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BalanceResponseModel() when $default != null:
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
    TResult Function(_BalanceResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BalanceResponseModel():
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
    TResult? Function(_BalanceResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BalanceResponseModel() when $default != null:
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
            @JsonKey(name: 'success') bool? success,
            @JsonKey(name: 'message') String? message,
            @JsonKey(name: 'data') BalanceModel? result)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BalanceResponseModel() when $default != null:
        return $default(_that.success, _that.message, _that.result);
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
            @JsonKey(name: 'success') bool? success,
            @JsonKey(name: 'message') String? message,
            @JsonKey(name: 'data') BalanceModel? result)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BalanceResponseModel():
        return $default(_that.success, _that.message, _that.result);
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
            @JsonKey(name: 'success') bool? success,
            @JsonKey(name: 'message') String? message,
            @JsonKey(name: 'data') BalanceModel? result)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BalanceResponseModel() when $default != null:
        return $default(_that.success, _that.message, _that.result);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BalanceResponseModel implements BalanceResponseModel {
  const _BalanceResponseModel(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.result});
  factory _BalanceResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BalanceResponseModelFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final BalanceModel? result;

  /// Create a copy of BalanceResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BalanceResponseModelCopyWith<_BalanceResponseModel> get copyWith =>
      __$BalanceResponseModelCopyWithImpl<_BalanceResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BalanceResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BalanceResponseModel &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, result);

  @override
  String toString() {
    return 'BalanceResponseModel(success: $success, message: $message, result: $result)';
  }
}

/// @nodoc
abstract mixin class _$BalanceResponseModelCopyWith<$Res>
    implements $BalanceResponseModelCopyWith<$Res> {
  factory _$BalanceResponseModelCopyWith(_BalanceResponseModel value,
          $Res Function(_BalanceResponseModel) _then) =
      __$BalanceResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') BalanceModel? result});

  @override
  $BalanceModelCopyWith<$Res>? get result;
}

/// @nodoc
class __$BalanceResponseModelCopyWithImpl<$Res>
    implements _$BalanceResponseModelCopyWith<$Res> {
  __$BalanceResponseModelCopyWithImpl(this._self, this._then);

  final _BalanceResponseModel _self;
  final $Res Function(_BalanceResponseModel) _then;

  /// Create a copy of BalanceResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? result = freezed,
  }) {
    return _then(_BalanceResponseModel(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as BalanceModel?,
    ));
  }

  /// Create a copy of BalanceResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BalanceModelCopyWith<$Res>? get result {
    if (_self.result == null) {
      return null;
    }

    return $BalanceModelCopyWith<$Res>(_self.result!, (value) {
      return _then(_self.copyWith(result: value));
    });
  }
}

// dart format on
