import 'package:cms/shared/models/church_model.dart';

abstract class ChurchState {}

class ChurchSuccessState extends ChurchState {
  final List<ChurchModel> churches;
  final String? value;
  ChurchSuccessState({
    required this.churches,
    this.value,
  });

  ChurchSuccessState copyWith({List<ChurchModel>? churches, String? value}) {
    return ChurchSuccessState(
      churches: churches ?? this.churches,
      value: value ?? this.value,
    );
  }
}

class ChurchInitialState extends ChurchState {}

class ChurchFailureState extends ChurchState {
  String message;

  ChurchFailureState({required this.message});
}

class InternetFailureState extends ChurchState {}
