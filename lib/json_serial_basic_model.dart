import 'package:json_annotation/json_annotation.dart';

part 'json_serial_basic_model.g.dart';

@JsonSerializable()
class AdvanceUser {
  int? id;
  String? name;
  String? email;

  AdvanceUser({
    this.id,
    this.name,
    this.email,
  });

  factory AdvanceUser.fromJson(Map<String, dynamic> json) => _$AdvanceUserFromJson(json);

  Map<String, dynamic> toJson() => _$AdvanceUserToJson(this);
}