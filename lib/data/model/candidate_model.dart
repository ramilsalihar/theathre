import 'package:json_annotation/json_annotation.dart';

part 'candidate_model.g.dart';

@JsonSerializable()
class CandidateModel {
  final String name;
  final String surname;
  final String phoneNumber;
  final String gender;
  final int age;

  CandidateModel({
    required this.name,
    required this.surname,
    required this.phoneNumber,
    required this.gender,
    required this.age,
  });

  factory CandidateModel.fromJson(Map<String, dynamic> json) =>
      _$CandidateModelFromJson(json);

  Map<String, dynamic> toJson() => _$CandidateModelToJson(this);
}
