import 'package:cms/admin/shared/models/admin_model.dart';
import 'package:cms/shared/client/client.dart';
import 'package:cms/utils/exception.dart';

class AdminApi {
  final _client = TestClient();

  Future<List<AdminModel>> getAdmins() async {
    try {
      const url = '/api/membership/admins';
      final request = await _client.dio.get(url);
      if (request.statusCode == 200) {
        final data = request.data as List;
        final List<AdminModel> admins =
            data.map((admin) => AdminModel.fromJson(admin)).toList();
        return admins;
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw NoInternetException();
    }
  }
}
