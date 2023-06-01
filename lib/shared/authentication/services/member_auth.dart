import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../utils/exception.dart';
import '../../client/client.dart';
import '../models/member_model.dart';

class MemberAuthApi {
  final _client = TestClient();

  Future<MemberModel> login(String emailAddress, String password) async {
    try {
      const url = "/api/membership/member/activate/";
      final data = {
        "email_address": emailAddress,
        "password": password,
      };
      final response = await _client.dio.post(url, data: jsonEncode(data));

      final body = response.data;
      return MemberModel.fromJson(body);
    } on DioError catch (e) {
      final body = e.response?.data;
      final error = body["error"];
      if (error == "INVALID EMAIL OR PASSWORD") {
        throw ServerException()..message = "Invalid email address or password";
      }
      if (error == "PLEASE REGISTER") {
        throw ServerException()..message = "Please sign up";
      }
      throw ServerException();
      // throw NoInternetException();
    }
  }
}
