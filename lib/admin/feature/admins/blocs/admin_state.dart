import '../../../../shared/authentication/models/admin_model.dart';

abstract class AdminState {}

class AdminsSuccess extends AdminState {
  final List<AdminModel> admins;
  AdminsSuccess({
    required this.admins,
  });
}

class AdminInitialState extends AdminState {}

class NoAdminState extends AdminState {}

class AdminFailureState extends AdminState {
  final String message;

  AdminFailureState({required this.message});
}
