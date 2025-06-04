import 'package:dio/dio.dart';

class ApiErrorHandler {
  static String handle(dynamic error) {
    if (error is DioException) {
      // dio error so its an error from response of the API or from dio itself
      switch (error.type) {
        case DioExceptionType.connectionError:
          return "Connection to server failed";
        case DioExceptionType.cancel:
          return "Request to the server was cancelled";
        case DioExceptionType.connectionTimeout:
          return "Connection timeout with the server";
        case DioExceptionType.unknown:
          if (error.message!.contains('SocketException')) {
            return 'No Internet Connection';
          }
          return 'Unexpected Error, Please try again!';
        case DioExceptionType.receiveTimeout:
          return "Receive timeout in connection with the server";
        case DioExceptionType.badCertificate:
          return "Bad certificate from the server";
        case DioExceptionType.badResponse:
          return error.response?.data ?? "Bad response from server";
        case DioExceptionType.sendTimeout:
          return "Send timeout in connection with the server";
        default:
          return "Something went wrong";
      }
    } else {
      return "Unknown error occurred";
    }
  }
}
