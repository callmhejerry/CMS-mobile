class Stats {
  final int totalMembers;
  final int totalMen;
  final int totalWomen;
  final Map<String, dynamic> single;
  final Map<String, dynamic> married;
  final Map<String, dynamic> divorse;
  final int totalEvents;

  const Stats({
    required this.divorse,
    required this.married,
    required this.single,
    required this.totalMembers,
    required this.totalMen,
    required this.totalWomen,
    required this.totalEvents,
  });

  factory Stats.fromJson(Map<String, dynamic> json) {
    return Stats(
      divorse: json["divorse"], //as Map<String, int>,
      married: json["married"], //as Map<String, int>,
      single: json["single"], //as Map<String, int>,
      totalMembers: json["total_member"],
      totalMen: json["men"],
      totalWomen: json["women"],
      totalEvents: json["total_events"],
    );
  }
}
