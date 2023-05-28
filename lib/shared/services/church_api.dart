import 'package:cms/utils/exception.dart';

import '../client/client.dart';
import '../models/church_model.dart';

class ChurchApi {
  final _client = TestClient();

  Future<List<ChurchModel>> getAllChurch() async {
    try {
      const url = "/api/churches";
      final response = await _client.dio.get(url);
      if (response.statusCode == 200) {
        final data = response.data as List;
        final List<ChurchModel> result =
            data.map((church) => ChurchModel.fromJson(church)).toList();
        return result;
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw NoInternetException();
    }
  }
}
