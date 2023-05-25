import '../../../../shared/enums/gender_enum.dart';
import '../../../../shared/enums/relationship_status_enum.dart';

class MemberModel {
  final String id;
  final String firstName;
  final String lastName;
  final String emailAddress;
  final String phoneNumber;
  final Gender gender;
  final RelationshipStatus relationshipStatus;
  final String residentialAddress;
  final String dob;

  const MemberModel({
    required this.dob,
    required this.emailAddress,
    required this.firstName,
    required this.gender,
    required this.id,
    required this.phoneNumber,
    required this.lastName,
    required this.residentialAddress,
    required this.relationshipStatus,
  });

  factory MemberModel.fromJson(Map<String, String> json) {
    return MemberModel(
      dob: json["dob"] ?? "",
      emailAddress: json["email_address"] ?? "",
      firstName: json["first_name"] ?? "",
      gender: GenderExtension.toGender(json["gender"] ?? ""),
      id: json["id"] ?? "",
      phoneNumber: json["phone_number"] ?? "",
      lastName: json["last_name"] ?? "",
      residentialAddress: json["residential_address"] ?? "",
      relationshipStatus: RelationshipStatusExtension.toRelationshipStatus(
          json["relationship_status"] ?? ""),
    );
  }

  Map<String, String> toJson() {
    Map<String, String> result = {
      "first_name": firstName,
      "last_name": lastName,
      "email_address": emailAddress,
    };

    return result;
  }
}
