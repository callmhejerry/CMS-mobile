import 'package:cms/admin/feature/admins/blocs/admin_event.dart';
import 'package:cms/admin/feature/admins/blocs/admin_state.dart';
import 'package:cms/admin/feature/admins/services/admin_api.dart';
import 'package:cms/utils/exception.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminBloc extends Bloc<AdminEvent, AdminState> {
  final adminApi = AdminApi();
  AdminBloc() : super(AdminInitialState()) {
    on<LoadAdmins>(loadAdmins);
  }

  loadAdmins(AdminEvent event, Emitter<AdminState> emit) async {
    await Future.delayed(const Duration(seconds: 1));
    try {
      final admins = await adminApi.getAdmins();
      if (admins.isEmpty) {
        emit(NoAdminState());
      } else {
        emit(AdminsSuccess(admins: admins));
      }
    } catch (e) {
      if (e is NoInternetException) {
        emit(AdminFailureState(message: "No Internet connection"));
      } else {
        emit(AdminFailureState(message: "Something went wrong"));
      }
    }
  }
}
