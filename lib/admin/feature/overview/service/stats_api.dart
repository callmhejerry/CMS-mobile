import 'package:cms/shared/client/client.dart';
import 'package:cms/utils/exception.dart';

import '../models/stats.dart';

class StatsApi {
  final _client = TestClient();

  Future<Stats> getStats() async {
    try {
      // TODO : GET THE ADMIN ID FROM LOCAL STORAGE
      const adminId = "260d41b7c3c7490abc63f219d4a098f4";
      const url = "/api/membership/admin/$adminId/count/";

      final response = await _client.dio.get(url);
      if (response.statusCode == 200) {
        final body = response.data;

        final Stats stats = Stats.fromJson(body);
        return stats;
      } else {
        throw ServerException()..message = "Invalid Admin id";
      }
    } catch (e) {
      throw NoInternetException();
    }
  }
}
