import '../../../../shared/models/event_model.dart';

abstract class EventState {}

class EventSucess extends EventState {
  final List<EventModel> todaysEvents;
  final List<EventModel> upcomingEvents;
  final List<EventModel> pastEvents;

  EventSucess({
    required this.pastEvents,
    required this.todaysEvents,
    required this.upcomingEvents,
  });
}

class EventFailure extends EventState {
  String message = "";

  EventFailure({
    required this.message,
  });
}

class InitialState extends EventState {}

class EmptyState extends EventState {}
