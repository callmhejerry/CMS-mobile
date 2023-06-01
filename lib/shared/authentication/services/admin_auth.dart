import 'dart:convert';

import 'package:cms/shared/authentication/models/admin_model.dart';
import 'package:cms/shared/client/client.dart';
import 'package:cms/utils/exception.dart';

class AdminAuthApi {
  final _client = TestClient();

  Future<AdminModel> login(String emailAddress, String password) async {
    try {
      const url = "/api/membership/admin/sign-in/";
      final data = {
        "email_address": emailAddress,
        "password": password,
      };
      final response = await _client.dio.post(url, data: jsonEncode(data));
      if (response.statusCode == 200) {
        final body = response.data;
        return AdminModel.fromJson(body);
      } else {
        final body = response.data;
        final error = body["error"];
        if (error == "INVALID EMAIL OR PASSWORD") {
          throw ServerException()
            ..message = "Invalid email address or password";
        }
        throw ServerException();
      }
    } catch (e) {
      throw NoInternetException();
    }
  }
}
