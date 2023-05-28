import 'package:cms/utils/time_extension.dart';
import 'package:flutter/material.dart';

class EventModel {
  final String title;
  final String thumbnail;
  final String venue;
  final String location;
  final String church;
  final DateTime startDate;
  final DateTime endDate;
  final TimeOfDay startTime;
  final TimeOfDay endTime;

  const EventModel({
    required this.church,
    required this.endDate,
    required this.endTime,
    required this.startDate,
    required this.startTime,
    required this.thumbnail,
    required this.title,
    required this.venue,
    required this.location,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) {
    return EventModel(
      church: json["church"] ?? "",
      endDate: DateTime.tryParse(json["end_date"]) ?? DateTime.now(),
      endTime: TimeExtenstion.fromTime(json["end_time"]),
      startDate: DateTime.tryParse(json["start_date"]) ?? DateTime.now(),
      startTime: TimeExtenstion.fromTime(json["start_time"]),
      thumbnail: json["thumbnail"] ?? "",
      title: json["title"] ?? "",
      venue: json["venue"] ?? "",
      location: json["location"] ?? "",
    );
  }
}
