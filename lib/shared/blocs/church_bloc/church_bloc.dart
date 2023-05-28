import 'package:cms/shared/blocs/church_bloc/church_event.dart';
import 'package:cms/shared/blocs/church_bloc/church_state.dart';
import 'package:cms/shared/services/church_api.dart';
import 'package:cms/utils/exception.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChurchBloc extends Bloc<ChurchEvent, ChurchState> {
  final churchApi = ChurchApi();
  ChurchBloc() : super(ChurchInitialState()) {
    on<LoadChurches>(_loadChurches);
    on<SelectChurch>(
      (event, emit) {
        if (state is ChurchSuccessState) {
          final newstate = state as ChurchSuccessState;
          emit(newstate.copyWith(value: event.church));
        }
      },
    );
  }

  void _loadChurches(event, emit) async {
    Future.delayed(const Duration(seconds: 1));

    try {
      final result = await churchApi.getAllChurch();
      emit(ChurchSuccessState(churches: result));
    } on Exception catch (e) {
      if (e is NoInternetException) {
        emit(InternetFailureState());
        Future.delayed(
          const Duration(seconds: 3),
          () {
            add(LoadChurches());
          },
        ); //
      } else {
        emit(ChurchFailureState(
          message: "Something went wrong",
        ));
        // add(LoadChurches());
      }
    }
  }
}
