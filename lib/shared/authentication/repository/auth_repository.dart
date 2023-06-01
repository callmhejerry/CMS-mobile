import 'package:cms/shared/authentication/models/admin_model.dart';
import 'package:cms/shared/authentication/models/guest_model.dart';
import 'package:cms/shared/authentication/models/user_model.dart';
import 'package:cms/shared/authentication/services/admin_auth.dart';
import 'package:cms/shared/authentication/services/local_auth_service.dart';
import 'package:cms/shared/authentication/services/member_auth.dart';

import '../models/member_model.dart';

class AuthRepository {
  final localAuthService = LocalAuthService();
  final adminAuthApi = AdminAuthApi();
  final memberAuthApi = MemberAuthApi();

  Future<AdminModel> adminLogin(String emailAddress, String password) async {
    final admin = await adminAuthApi.login(emailAddress, password);
    await localAuthService.insertUser(admin);
    return admin;
  }

  Future<MemberModel> memberLogin(String emailAddress, String password) async {
    final member = await memberAuthApi.login(emailAddress, password);
    await localAuthService.insertUser(member);
    return member;
  }

  Future<GuestModel> guestLogin() async {
    final guest = GuestModel();
    await localAuthService.insertUser(guest);
    return guest;
  }

  void signOut() {
    localAuthService.removeUser();
  }

  UserModel? loadUser() {
    return localAuthService.getUser();
  }
}
