import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/exception.dart';
import '../service/stats_api.dart';
import 'overview_event.dart';
import 'overview_state.dart';

class OverviewBloc extends Bloc<OverviewEvent, OverviewState> {
  final statApi = StatsApi();
  OverviewBloc() : super(OverviewInitialState()) {
    on<LoadStats>((event, emit) async {
      await Future.delayed(const Duration(seconds: 1));
      try {
        final stats = await statApi.getStats();
        emit(OverviewSuccessState(stats: stats));
      } on AppException catch (e) {
        emit(OverViewFailureState(message: e.message));
      }
    });
  }
}
