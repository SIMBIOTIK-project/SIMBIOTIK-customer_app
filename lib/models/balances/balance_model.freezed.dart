// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BalanceModel {
  @JsonKey(name: 'saldo')
  double? get saldo;
  @JsonKey(name: 'total_deposit')
  double? get totalDeposit;
  @JsonKey(name: 'total_withdrawal')
  double? get totalWithdrawal;
  @JsonKey(name: 'total_sodako')
  double? get totalSodako;

  /// Create a copy of BalanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BalanceModelCopyWith<BalanceModel> get copyWith =>
      _$BalanceModelCopyWithImpl<BalanceModel>(
          this as BalanceModel, _$identity);

  /// Serializes this BalanceModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BalanceModel &&
            (identical(other.saldo, saldo) || other.saldo == saldo) &&
            (identical(other.totalDeposit, totalDeposit) ||
                other.totalDeposit == totalDeposit) &&
            (identical(other.totalWithdrawal, totalWithdrawal) ||
                other.totalWithdrawal == totalWithdrawal) &&
            (identical(other.totalSodako, totalSodako) ||
                other.totalSodako == totalSodako));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, saldo, totalDeposit, totalWithdrawal, totalSodako);

  @override
  String toString() {
    return 'BalanceModel(saldo: $saldo, totalDeposit: $totalDeposit, totalWithdrawal: $totalWithdrawal, totalSodako: $totalSodako)';
  }
}

/// @nodoc
abstract mixin class $BalanceModelCopyWith<$Res> {
  factory $BalanceModelCopyWith(
          BalanceModel value, $Res Function(BalanceModel) _then) =
      _$BalanceModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'saldo') double? saldo,
      @JsonKey(name: 'total_deposit') double? totalDeposit,
      @JsonKey(name: 'total_withdrawal') double? totalWithdrawal,
      @JsonKey(name: 'total_sodako') double? totalSodako});
}

/// @nodoc
class _$BalanceModelCopyWithImpl<$Res> implements $BalanceModelCopyWith<$Res> {
  _$BalanceModelCopyWithImpl(this._self, this._then);

  final BalanceModel _self;
  final $Res Function(BalanceModel) _then;

  /// Create a copy of BalanceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saldo = freezed,
    Object? totalDeposit = freezed,
    Object? totalWithdrawal = freezed,
    Object? totalSodako = freezed,
  }) {
    return _then(_self.copyWith(
      saldo: freezed == saldo
          ? _self.saldo
          : saldo // ignore: cast_nullable_to_non_nullable
              as double?,
      totalDeposit: freezed == totalDeposit
          ? _self.totalDeposit
          : totalDeposit // ignore: cast_nullable_to_non_nullable
              as double?,
      totalWithdrawal: freezed == totalWithdrawal
          ? _self.totalWithdrawal
          : totalWithdrawal // ignore: cast_nullable_to_non_nullable
              as double?,
      totalSodako: freezed == totalSodako
          ? _self.totalSodako
          : totalSodako // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// Adds pattern-matching-related methods to [BalanceModel].
extension BalanceModelPatterns on BalanceModel {
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
    TResult Function(_BalanceModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BalanceModel() when $default != null:
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
    TResult Function(_BalanceModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BalanceModel():
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
    TResult? Function(_BalanceModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BalanceModel() when $default != null:
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
            @JsonKey(name: 'saldo') double? saldo,
            @JsonKey(name: 'total_deposit') double? totalDeposit,
            @JsonKey(name: 'total_withdrawal') double? totalWithdrawal,
            @JsonKey(name: 'total_sodako') double? totalSodako)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BalanceModel() when $default != null:
        return $default(_that.saldo, _that.totalDeposit, _that.totalWithdrawal,
            _that.totalSodako);
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
            @JsonKey(name: 'saldo') double? saldo,
            @JsonKey(name: 'total_deposit') double? totalDeposit,
            @JsonKey(name: 'total_withdrawal') double? totalWithdrawal,
            @JsonKey(name: 'total_sodako') double? totalSodako)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BalanceModel():
        return $default(_that.saldo, _that.totalDeposit, _that.totalWithdrawal,
            _that.totalSodako);
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
            @JsonKey(name: 'saldo') double? saldo,
            @JsonKey(name: 'total_deposit') double? totalDeposit,
            @JsonKey(name: 'total_withdrawal') double? totalWithdrawal,
            @JsonKey(name: 'total_sodako') double? totalSodako)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BalanceModel() when $default != null:
        return $default(_that.saldo, _that.totalDeposit, _that.totalWithdrawal,
            _that.totalSodako);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BalanceModel implements BalanceModel {
  const _BalanceModel(
      {@JsonKey(name: 'saldo') this.saldo,
      @JsonKey(name: 'total_deposit') this.totalDeposit,
      @JsonKey(name: 'total_withdrawal') this.totalWithdrawal,
      @JsonKey(name: 'total_sodako') this.totalSodako});
  factory _BalanceModel.fromJson(Map<String, dynamic> json) =>
      _$BalanceModelFromJson(json);

  @override
  @JsonKey(name: 'saldo')
  final double? saldo;
  @override
  @JsonKey(name: 'total_deposit')
  final double? totalDeposit;
  @override
  @JsonKey(name: 'total_withdrawal')
  final double? totalWithdrawal;
  @override
  @JsonKey(name: 'total_sodako')
  final double? totalSodako;

  /// Create a copy of BalanceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BalanceModelCopyWith<_BalanceModel> get copyWith =>
      __$BalanceModelCopyWithImpl<_BalanceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BalanceModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BalanceModel &&
            (identical(other.saldo, saldo) || other.saldo == saldo) &&
            (identical(other.totalDeposit, totalDeposit) ||
                other.totalDeposit == totalDeposit) &&
            (identical(other.totalWithdrawal, totalWithdrawal) ||
                other.totalWithdrawal == totalWithdrawal) &&
            (identical(other.totalSodako, totalSodako) ||
                other.totalSodako == totalSodako));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, saldo, totalDeposit, totalWithdrawal, totalSodako);

  @override
  String toString() {
    return 'BalanceModel(saldo: $saldo, totalDeposit: $totalDeposit, totalWithdrawal: $totalWithdrawal, totalSodako: $totalSodako)';
  }
}

/// @nodoc
abstract mixin class _$BalanceModelCopyWith<$Res>
    implements $BalanceModelCopyWith<$Res> {
  factory _$BalanceModelCopyWith(
          _BalanceModel value, $Res Function(_BalanceModel) _then) =
      __$BalanceModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'saldo') double? saldo,
      @JsonKey(name: 'total_deposit') double? totalDeposit,
      @JsonKey(name: 'total_withdrawal') double? totalWithdrawal,
      @JsonKey(name: 'total_sodako') double? totalSodako});
}

/// @nodoc
class __$BalanceModelCopyWithImpl<$Res>
    implements _$BalanceModelCopyWith<$Res> {
  __$BalanceModelCopyWithImpl(this._self, this._then);

  final _BalanceModel _self;
  final $Res Function(_BalanceModel) _then;

  /// Create a copy of BalanceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? saldo = freezed,
    Object? totalDeposit = freezed,
    Object? totalWithdrawal = freezed,
    Object? totalSodako = freezed,
  }) {
    return _then(_BalanceModel(
      saldo: freezed == saldo
          ? _self.saldo
          : saldo // ignore: cast_nullable_to_non_nullable
              as double?,
      totalDeposit: freezed == totalDeposit
          ? _self.totalDeposit
          : totalDeposit // ignore: cast_nullable_to_non_nullable
              as double?,
      totalWithdrawal: freezed == totalWithdrawal
          ? _self.totalWithdrawal
          : totalWithdrawal // ignore: cast_nullable_to_non_nullable
              as double?,
      totalSodako: freezed == totalSodako
          ? _self.totalSodako
          : totalSodako // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

// dart format on
