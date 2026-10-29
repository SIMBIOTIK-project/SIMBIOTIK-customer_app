// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sodako_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SodakoModel _$SodakoModelFromJson(Map<String, dynamic> json) => _SodakoModel(
      id: (json['id'] as num?)?.toInt(),
      idUser: json['id_user'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$SodakoModelToJson(_SodakoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_user': instance.idUser,
      'price': instance.price,
      'user': instance.user,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
