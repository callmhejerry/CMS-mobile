import 'package:cms/shared/client/client.dart';

class EventApi {
  final _client = TestClient();

  Future getPastEvent() async {
    const String url = "/api/events/past";

    final response = await _client.dio.get(url);
    if (response.statusCode == 200) {
      final data = response.data;
      return data;
    }
  }

  Future getTodaysEvent() async {
    const String url = "/api/events/today";

    final response = await _client.dio.get(url);
    if (response.statusCode == 200) {
      final data = response.data;
      return data;
    }
  }

  Future getUpcomingEvent() async {
    const String url = "/api/events/upcoming";

    final response = await _client.dio.get(url);
    if (response.statusCode == 200) {
      final data = response.data;
      return data;
    }
  }
}
