import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_user_model.freezed.dart';

part 'freezed_user_model.g.dart';

@freezed
class FreezedUserModel with _$FreezedUserModel {
  const factory FreezedUserModel({
    int? id,
    String? name,
    String? username,
    String? email,
    Address? address,
  }) = _FreezedUserModel;

  // toJson 자동 생성
  factory FreezedUserModel.fromJson(Map<String, dynamic> json) =>
      _$FreezedUserModelFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    String? street,
    String? zipcode,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
