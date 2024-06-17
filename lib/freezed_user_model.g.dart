// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FreezedUserModelImpl _$$FreezedUserModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FreezedUserModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FreezedUserModelImplToJson(
        _$FreezedUserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'address': instance.address,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      street: json['street'] as String?,
      zipcode: json['zipcode'] as String?,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'street': instance.street,
      'zipcode': instance.zipcode,
    };
