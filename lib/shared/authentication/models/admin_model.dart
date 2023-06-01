import 'package:cms/shared/authentication/models/user_model.dart';
import 'package:isar/isar.dart';

import '../services/local_auth_service.dart';
part 'admin_model.g.dart';

@collection
class AdminModel extends UserModel {
  final String firstName;
  final String lastName;
  final String emailAddress;
  final String phoneNumber;
  final String church;
  final String id;

  AdminModel({
    required this.church,
    required this.emailAddress,
    required this.firstName,
    required this.id,
    required this.lastName,
    required this.phoneNumber,
  }) : super(userType: UserType.admin);

  factory AdminModel.fromJson(Map<String, dynamic> json) {
    return AdminModel(
      church: json["church"] ?? "",
      emailAddress: json["email_address"] ?? "",
      firstName: json["first_name"] ?? "",
      id: json["id"] ?? "",
      lastName: json["last_name"] ?? "",
      phoneNumber: json["phone_number"] ?? "",
    );
  }
}
