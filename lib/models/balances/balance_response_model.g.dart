// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BalanceResponseModel _$BalanceResponseModelFromJson(
        Map<String, dynamic> json) =>
    _BalanceResponseModel(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      result: json['data'] == null
          ? null
          : BalanceModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BalanceResponseModelToJson(
        _BalanceResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.result,
    };
