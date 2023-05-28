import 'package:cms/member/feature/events/services/remote_event_api.dart';
import 'package:cms/shared/models/event_model.dart';
import 'package:cms/utils/exception.dart';
import 'package:dio/dio.dart';

class EventRepository {
  final _api = EventApi();

  Future<List<EventModel>> getPastEvent() async {
    try {
      final data = await _api.getPastEvent() as List;
      final List<EventModel> results = data.map((event) {
        return EventModel.fromJson(event);
      }).toList();
      return results;
    } on DioError catch (error) {
      switch (error.error) {
        case DioErrorType.connectionTimeout:
          throw NoInternetException();
        default:
          throw ServerException();
      }
    }
  }

  Future<List<EventModel>> getUpcomingEvent() async {
    try {
      final data = await _api.getUpcomingEvent() as List;
      final List<EventModel> results = data.map((event) {
        return EventModel.fromJson(event);
      }).toList();
      return results;
    } on DioError catch (error) {
      switch (error.error) {
        case DioErrorType.connectionTimeout:
          throw NoInternetException();
        default:
          throw ServerException();
      }
    }
  }

  Future<List<EventModel>> getTodaysEvent() async {
    try {
      final data = await _api.getTodaysEvent() as List;
      final List<EventModel> results = data.map((event) {
        return EventModel.fromJson(event);
      }).toList();
      return results;
    } on DioError catch (error) {
      switch (error.error) {
        case DioErrorType.connectionTimeout:
          throw NoInternetException();
        default:
          throw ServerException();
      }
    }
  }
}
