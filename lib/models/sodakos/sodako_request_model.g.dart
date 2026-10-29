// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sodako_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SodakoRequestModel _$SodakoRequestModelFromJson(Map<String, dynamic> json) =>
    _SodakoRequestModel(
      idUser: json['id_user'] as String?,
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SodakoRequestModelToJson(_SodakoRequestModel instance) =>
    <String, dynamic>{
      'id_user': instance.idUser,
      'price': instance.price,
    };
