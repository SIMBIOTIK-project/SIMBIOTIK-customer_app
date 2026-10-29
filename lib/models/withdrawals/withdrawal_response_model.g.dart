// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WithdrawalResponseModel _$WithdrawalResponseModelFromJson(
        Map<String, dynamic> json) =>
    _WithdrawalResponseModel(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      result: json['result'] == null
          ? null
          : WithdrawalPageModel.fromJson(
              json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WithdrawalResponseModelToJson(
        _WithdrawalResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'result': instance.result,
    };
