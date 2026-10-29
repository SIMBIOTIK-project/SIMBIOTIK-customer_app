// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deposit_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DepositResponseModel _$DepositResponseModelFromJson(
        Map<String, dynamic> json) =>
    _DepositResponseModel(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      result: json['result'] == null
          ? null
          : DepositPageModel.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DepositResponseModelToJson(
        _DepositResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'result': instance.result,
    };
