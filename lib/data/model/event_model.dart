import 'package:json_annotation/json_annotation.dart';

part 'event_model.g.dart';

@JsonSerializable()
class EventModel {
  final String title;
  final String description;
  final String date;
  final String time;
  final String image;

  EventModel({
    required this.title,
    required this.description,
    required this.date,
    required this.time,
    required this.image,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);

  Map<String, dynamic> toJson() => _$EventModelToJson(this);
}
