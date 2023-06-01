abstract class AppException {
  late String message;
}

class NoInternetException implements AppException {
  @override
  String message = "No internet Connection";
}

class ServerException implements AppException {
  @override
  String message = "Something went wrong";
}
