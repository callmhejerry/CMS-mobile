import 'package:dio/dio.dart';

abstract class Client {}

class TestClient extends Client {
  final dio = Dio(
    BaseOptions(
      baseUrl: "http://localhost:5000",
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(minutes: 1),
      followRedirects: true,
    ),
  );
}
