// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdrawal_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WithdrawalPageModel {
  @JsonKey(name: 'total_data')
  int? get totalData;
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @JsonKey(name: 'per_page')
  int? get perPage;
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @JsonKey(name: 'data')
  List<WithdrawalModel>? get data;

  /// Create a copy of WithdrawalPageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WithdrawalPageModelCopyWith<WithdrawalPageModel> get copyWith =>
      _$WithdrawalPageModelCopyWithImpl<WithdrawalPageModel>(
          this as WithdrawalPageModel, _$identity);

  /// Serializes this WithdrawalPageModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WithdrawalPageModel &&
            (identical(other.totalData, totalData) ||
                other.totalData == totalData) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalData, currentPage, perPage,
      totalPages, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'WithdrawalPageModel(totalData: $totalData, currentPage: $currentPage, perPage: $perPage, totalPages: $totalPages, data: $data)';
  }
}

/// @nodoc
abstract mixin class $WithdrawalPageModelCopyWith<$Res> {
  factory $WithdrawalPageModelCopyWith(
          WithdrawalPageModel value, $Res Function(WithdrawalPageModel) _then) =
      _$WithdrawalPageModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_data') int? totalData,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'data') List<WithdrawalModel>? data});
}

/// @nodoc
class _$WithdrawalPageModelCopyWithImpl<$Res>
    implements $WithdrawalPageModelCopyWith<$Res> {
  _$WithdrawalPageModelCopyWithImpl(this._self, this._then);

  final WithdrawalPageModel _self;
  final $Res Function(WithdrawalPageModel) _then;

  /// Create a copy of WithdrawalPageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalData = freezed,
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? totalPages = freezed,
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      totalData: freezed == totalData
          ? _self.totalData
          : totalData // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WithdrawalModel>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [WithdrawalPageModel].
extension WithdrawalPageModelPatterns on WithdrawalPageModel {
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
    TResult Function(_WithdrawalPageModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WithdrawalPageModel() when $default != null:
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
    TResult Function(_WithdrawalPageModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WithdrawalPageModel():
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
    TResult? Function(_WithdrawalPageModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WithdrawalPageModel() when $default != null:
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
            @JsonKey(name: 'total_data') int? totalData,
            @JsonKey(name: 'current_page') int? currentPage,
            @JsonKey(name: 'per_page') int? perPage,
            @JsonKey(name: 'total_pages') int? totalPages,
            @JsonKey(name: 'data') List<WithdrawalModel>? data)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WithdrawalPageModel() when $default != null:
        return $default(_that.totalData, _that.currentPage, _that.perPage,
            _that.totalPages, _that.data);
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
            @JsonKey(name: 'total_data') int? totalData,
            @JsonKey(name: 'current_page') int? currentPage,
            @JsonKey(name: 'per_page') int? perPage,
            @JsonKey(name: 'total_pages') int? totalPages,
            @JsonKey(name: 'data') List<WithdrawalModel>? data)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WithdrawalPageModel():
        return $default(_that.totalData, _that.currentPage, _that.perPage,
            _that.totalPages, _that.data);
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
            @JsonKey(name: 'total_data') int? totalData,
            @JsonKey(name: 'current_page') int? currentPage,
            @JsonKey(name: 'per_page') int? perPage,
            @JsonKey(name: 'total_pages') int? totalPages,
            @JsonKey(name: 'data') List<WithdrawalModel>? data)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WithdrawalPageModel() when $default != null:
        return $default(_that.totalData, _that.currentPage, _that.perPage,
            _that.totalPages, _that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _WithdrawalPageModel implements WithdrawalPageModel {
  const _WithdrawalPageModel(
      {@JsonKey(name: 'total_data') this.totalData,
      @JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'per_page') this.perPage,
      @JsonKey(name: 'total_pages') this.totalPages,
      @JsonKey(name: 'data') final List<WithdrawalModel>? data})
      : _data = data;
  factory _WithdrawalPageModel.fromJson(Map<String, dynamic> json) =>
      _$WithdrawalPageModelFromJson(json);

  @override
  @JsonKey(name: 'total_data')
  final int? totalData;
  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  final List<WithdrawalModel>? _data;
  @override
  @JsonKey(name: 'data')
  List<WithdrawalModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of WithdrawalPageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WithdrawalPageModelCopyWith<_WithdrawalPageModel> get copyWith =>
      __$WithdrawalPageModelCopyWithImpl<_WithdrawalPageModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WithdrawalPageModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WithdrawalPageModel &&
            (identical(other.totalData, totalData) ||
                other.totalData == totalData) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalData, currentPage, perPage,
      totalPages, const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'WithdrawalPageModel(totalData: $totalData, currentPage: $currentPage, perPage: $perPage, totalPages: $totalPages, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$WithdrawalPageModelCopyWith<$Res>
    implements $WithdrawalPageModelCopyWith<$Res> {
  factory _$WithdrawalPageModelCopyWith(_WithdrawalPageModel value,
          $Res Function(_WithdrawalPageModel) _then) =
      __$WithdrawalPageModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_data') int? totalData,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'data') List<WithdrawalModel>? data});
}

/// @nodoc
class __$WithdrawalPageModelCopyWithImpl<$Res>
    implements _$WithdrawalPageModelCopyWith<$Res> {
  __$WithdrawalPageModelCopyWithImpl(this._self, this._then);

  final _WithdrawalPageModel _self;
  final $Res Function(_WithdrawalPageModel) _then;

  /// Create a copy of WithdrawalPageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? totalData = freezed,
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? totalPages = freezed,
    Object? data = freezed,
  }) {
    return _then(_WithdrawalPageModel(
      totalData: freezed == totalData
          ? _self.totalData
          : totalData // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WithdrawalModel>?,
    ));
  }
}

// dart format on
