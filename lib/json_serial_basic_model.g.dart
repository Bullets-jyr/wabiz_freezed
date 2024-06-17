// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_serial_basic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdvanceUser _$AdvanceUserFromJson(Map<String, dynamic> json) => AdvanceUser(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$AdvanceUserToJson(AdvanceUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
    };
