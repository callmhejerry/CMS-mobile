import 'package:cms/shared/authentication/models/user_model.dart';
import 'package:isar/isar.dart';

import '../services/local_auth_service.dart';
part 'guest_model.g.dart';

@collection
class GuestModel extends UserModel {
  GuestModel() : super(userType: UserType.guest);
}
