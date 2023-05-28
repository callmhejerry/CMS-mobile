import 'package:cms/member/feature/events/blocs/event_state.dart';
import 'package:cms/member/feature/events/blocs/events_event.dart';
import 'package:cms/member/feature/events/repositories/event_repository.dart';
import 'package:cms/utils/exception.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EventBloc extends Bloc<LoadEvents, EventState> {
  final eventRepository = EventRepository();
  EventBloc() : super(InitialState()) {
    on<LoadEvents>(
      (event, emit) async {
        await Future.delayed(const Duration(seconds: 2));
        try {
          final todayEvent = await eventRepository.getTodaysEvent();
          final pastEvent = await eventRepository.getPastEvent();
          final upComingEvent = await eventRepository.getUpcomingEvent();

          if (todayEvent.isEmpty &&
              pastEvent.isEmpty &&
              upComingEvent.isEmpty) {
            emit(EmptyState());
          } else {
            emit(EventSucess(
              pastEvents: pastEvent,
              todaysEvents: todayEvent,
              upcomingEvents: upComingEvent,
            ));
          }
        } catch (e) {
          if (e is ServerException) {
            emit(EventFailure(message: "Something went wrong"));
          } else {
            emit(EventFailure(message: "No internet connection"));
          }
        }
      },
    );
  }
}
