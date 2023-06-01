import 'package:cms/shared/authentication/models/user_model.dart';
import 'package:cms/shared/authentication/services/local_auth_service.dart';
import 'package:isar/isar.dart';

import '../../../../shared/enums/gender_enum.dart';
import '../../../../shared/enums/relationship_status_enum.dart';
part 'member_model.g.dart';

@collection
class MemberModel extends UserModel {
  final String firstName;
  final String lastName;
  final String emailAddress;
  final String phoneNumber;

  @Enumerated(EnumType.name)
  final Gender gender;
  @Enumerated(EnumType.name)
  final RelationshipStatus relationshipStatus;
  final String residentialAddress;
  final String dob;
  final String id;

  MemberModel({
    required this.dob,
    required this.emailAddress,
    required this.firstName,
    required this.gender,
    required this.id,
    required this.phoneNumber,
    required this.lastName,
    required this.residentialAddress,
    required this.relationshipStatus,
  }) : super(userType: UserType.member);

  factory MemberModel.fromJson(Map<String, dynamic> json) {
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
