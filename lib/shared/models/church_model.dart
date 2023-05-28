class ChurchModel {
  final String name;
  final String id;

  const ChurchModel({
    required this.id,
    required this.name,
  });

  factory ChurchModel.fromJson(Map<String, dynamic> json) {
    return ChurchModel(
      id: json['id'] ?? "",
      name: json["name"] ?? "",
    );
  }
}
