// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sodako_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SodakoResponseModel _$SodakoResponseModelFromJson(Map<String, dynamic> json) =>
    _SodakoResponseModel(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      result: json['result'] == null
          ? null
          : SodakoPageModel.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SodakoResponseModelToJson(
        _SodakoResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'result': instance.result,
    };
