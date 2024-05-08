import 'package:json_annotation/json_annotation.dart';

part 'admin_model.g.dart';

@JsonSerializable()
class AdminModel {
  final String name;
  final String surname;
  final String username;
  final String email;
  final String password;

  AdminModel({
    required this.name,
    required this.surname,
    required this.username,
    required this.email,
    required this.password,
  });

  factory AdminModel.fromJson(Map<String, dynamic> json) =>
      _$AdminModelFromJson(json);

  Map<String, dynamic> toJson() => _$AdminModelToJson(this);
}
