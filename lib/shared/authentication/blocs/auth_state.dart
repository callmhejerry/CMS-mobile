import 'package:cms/shared/authentication/models/guest_model.dart';
import 'package:cms/shared/authentication/models/member_model.dart';

import '../models/admin_model.dart';

abstract class AuthState {}

class AdminAuthState extends AuthState {
  AdminModel adminModel;

  AdminAuthState({required this.adminModel});
}

class GuestAuthState extends AuthState {
  GuestModel guestModel;

  GuestAuthState({required this.guestModel});
}

class MemberAuthState extends AuthState {
  MemberModel memberModel;

  MemberAuthState({required this.memberModel});
}

class LoggedOutState extends AuthState {}

class AuthFailureState extends AuthState {
  String message;

  AuthFailureState({required this.message});
}

class LoadingState extends AuthState {}
