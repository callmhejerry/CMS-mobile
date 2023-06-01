import 'package:cms/shared/authentication/models/admin_model.dart';
import 'package:cms/shared/authentication/models/guest_model.dart';
import 'package:cms/shared/authentication/models/member_model.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../models/user_model.dart';

enum UserType {
  guest,
  member,
  admin,
}

class LocalAuthService {
  static late Isar db;

  LocalAuthService();

  UserModel? getUser() {
    final isar = db;
    final guest = isar.guestModels.where().findAllSync();
    final admin = isar.adminModels.where().findAllSync();
    final member = isar.memberModels.where().findAllSync();

    if (guest.isNotEmpty) {
      return guest[0];
    } else if (admin.isNotEmpty) {
      return admin[0];
    } else if (member.isNotEmpty) {
      return member[0];
    }
    return null;
  }

  Future<void> insertUser(UserModel user) async {
    final isar = db;

    if (user is AdminModel) {
      await isar.writeTxn(() => isar.adminModels.put(user));
    } else if (user is MemberModel) {
      await isar.writeTxn<int>(() => isar.memberModels.put(user));
    } else if (user is GuestModel) {
      await isar.writeTxn(() => isar.guestModels.put(user));
    }
  }

  void removeUser() {
    final isar = db;
    isar.writeTxnSync(() {
      isar.adminModels.clearSync();
      isar.memberModels.clearSync();
      isar.guestModels.clearSync();
    });
  }

  static Future<void> init() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      db = await Isar.open(
        [MemberModelSchema, AdminModelSchema, GuestModelSchema],
        directory: dir.path,
      );
    } else {
      db = Isar.getInstance()!;
    }
  }
}
