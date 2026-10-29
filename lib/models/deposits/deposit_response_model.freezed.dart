// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deposit_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DepositResponseModel {
  @JsonKey(name: 'success')
  bool? get success;
  @JsonKey(name: 'message')
  String? get message;
  @JsonKey(name: 'result')
  DepositPageModel? get result;

  /// Create a copy of DepositResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DepositResponseModelCopyWith<DepositResponseModel> get copyWith =>
      _$DepositResponseModelCopyWithImpl<DepositResponseModel>(
          this as DepositResponseModel, _$identity);

  /// Serializes this DepositResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DepositResponseModel &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, result);

  @override
  String toString() {
    return 'DepositResponseModel(success: $success, message: $message, result: $result)';
  }
}

/// @nodoc
abstract mixin class $DepositResponseModelCopyWith<$Res> {
  factory $DepositResponseModelCopyWith(DepositResponseModel value,
          $Res Function(DepositResponseModel) _then) =
      _$DepositResponseModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'result') DepositPageModel? result});

  $DepositPageModelCopyWith<$Res>? get result;
}

/// @nodoc
class _$DepositResponseModelCopyWithImpl<$Res>
    implements $DepositResponseModelCopyWith<$Res> {
  _$DepositResponseModelCopyWithImpl(this._self, this._then);

  final DepositResponseModel _self;
  final $Res Function(DepositResponseModel) _then;

  /// Create a copy of DepositResponseModel
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
              as DepositPageModel?,
    ));
  }

  /// Create a copy of DepositResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepositPageModelCopyWith<$Res>? get result {
    if (_self.result == null) {
      return null;
    }

    return $DepositPageModelCopyWith<$Res>(_self.result!, (value) {
      return _then(_self.copyWith(result: value));
    });
  }
}

/// Adds pattern-matching-related methods to [DepositResponseModel].
extension DepositResponseModelPatterns on DepositResponseModel {
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
    TResult Function(_DepositResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DepositResponseModel() when $default != null:
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
    TResult Function(_DepositResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DepositResponseModel():
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
    TResult? Function(_DepositResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DepositResponseModel() when $default != null:
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
            @JsonKey(name: 'result') DepositPageModel? result)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DepositResponseModel() when $default != null:
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
            @JsonKey(name: 'result') DepositPageModel? result)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DepositResponseModel():
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
            @JsonKey(name: 'result') DepositPageModel? result)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DepositResponseModel() when $default != null:
        return $default(_that.success, _that.message, _that.result);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DepositResponseModel implements DepositResponseModel {
  const _DepositResponseModel(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'result') this.result});
  factory _DepositResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DepositResponseModelFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'result')
  final DepositPageModel? result;

  /// Create a copy of DepositResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DepositResponseModelCopyWith<_DepositResponseModel> get copyWith =>
      __$DepositResponseModelCopyWithImpl<_DepositResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DepositResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DepositResponseModel &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, result);

  @override
  String toString() {
    return 'DepositResponseModel(success: $success, message: $message, result: $result)';
  }
}

/// @nodoc
abstract mixin class _$DepositResponseModelCopyWith<$Res>
    implements $DepositResponseModelCopyWith<$Res> {
  factory _$DepositResponseModelCopyWith(_DepositResponseModel value,
          $Res Function(_DepositResponseModel) _then) =
      __$DepositResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'result') DepositPageModel? result});

  @override
  $DepositPageModelCopyWith<$Res>? get result;
}

/// @nodoc
class __$DepositResponseModelCopyWithImpl<$Res>
    implements _$DepositResponseModelCopyWith<$Res> {
  __$DepositResponseModelCopyWithImpl(this._self, this._then);

  final _DepositResponseModel _self;
  final $Res Function(_DepositResponseModel) _then;

  /// Create a copy of DepositResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? result = freezed,
  }) {
    return _then(_DepositResponseModel(
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
              as DepositPageModel?,
    ));
  }

  /// Create a copy of DepositResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepositPageModelCopyWith<$Res>? get result {
    if (_self.result == null) {
      return null;
    }

    return $DepositPageModelCopyWith<$Res>(_self.result!, (value) {
      return _then(_self.copyWith(result: value));
    });
  }
}

// dart format on
