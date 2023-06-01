import 'package:isar/isar.dart';

import '../services/local_auth_service.dart';

// abstract class UserModel {}

abstract class UserModel {
  @Enumerated(EnumType.name)
  final UserType userType;
  Id dbId = Isar.autoIncrement;
  UserModel({required this.userType});
}
