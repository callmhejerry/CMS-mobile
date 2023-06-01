import '../models/stats.dart';

abstract class OverviewState {}

class OverviewInitialState extends OverviewState {}

class OverviewSuccessState extends OverviewState {
  Stats stats;

  OverviewSuccessState({
    required this.stats,
  });
}

class OverViewFailureState extends OverviewState {
  String message;

  OverViewFailureState({
    this.message = "",
  });
}
