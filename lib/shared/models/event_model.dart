class EventModel {
  final String title;
  final String flier;
  final String startDate;
  final String endDate;
  final String startTime;
  final String endTime;
  final String venue;
  final String location;
  final String id;
  final String church;

  const EventModel({
    required this.title,
    required this.flier,
    required this.church,
    required this.endDate,
    required this.endTime,
    required this.id,
    required this.location,
    required this.startDate,
    required this.startTime,
    required this.venue,
  });

  factory EventModel.fromJson(Map<String, String> json) {
    return EventModel(
      title: json["title"] ?? "",
      flier: json["flier"] ?? "",
      church: json["church"] ?? "",
      endDate: json["endDate"] ?? "",
      endTime: json["endTime"] ?? "",
      id: json["id"] ?? "",
      location: json["location"] ?? "",
      startDate: json["startDate"] ?? "",
      startTime: json["startTime"] ?? "",
      venue: json["venue"] ?? "",
    );
  }
}
