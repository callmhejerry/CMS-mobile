import 'package:cms/shared/authentication/models/admin_model.dart';
import 'package:cms/shared/authentication/models/guest_model.dart';
import 'package:cms/shared/authentication/repository/auth_repository.dart';
import 'package:cms/utils/exception.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/member_model.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final authRepo = AuthRepository();
  AuthBloc() : super(LoggedOutState()) {
    on<LoadUser>(_loadUser);
    on<LoginAdmin>(_loginAdmin);
    on<LoginGuest>(_loginGuest);
    on<LoginMember>(_loginMember);
    on<Logout>(_logout);
  }

  _loadUser(event, emit) {
    final user = authRepo.loadUser();
    if (user == null) {
      emit(LoggedOutState());
    } else if (user is AdminModel) {
      emit(AdminAuthState(adminModel: user));
    } else if (user is MemberModel) {
      emit(MemberAuthState(memberModel: user));
    } else if (user is GuestModel) {
      emit(GuestAuthState(guestModel: user));
    }
  }

  _loginAdmin(LoginAdmin event, emit) async {
    emit(LoadingState());
    try {
      final admin =
          await authRepo.adminLogin(event.emailAddress, event.password);
      emit(AdminAuthState(adminModel: admin));
    } on AppException catch (e) {
      emit(e.message);
    }
  }

  _loginMember(LoginMember event, emit) async {
    emit(LoadingState());
    try {
      final member =
          await authRepo.memberLogin(event.emailAddress, event.password);
      emit(MemberAuthState(memberModel: member));
    } on AppException catch (e) {
      emit(AuthFailureState(message: e.message));
    }
  }

  _loginGuest(LoginGuest event, emit) async {
    final guest = await authRepo.guestLogin();
    emit(GuestAuthState(guestModel: guest));
  }

  _logout(Logout event, emit) {
    authRepo.signOut();
    emit(LoggedOutState());
  }
}
