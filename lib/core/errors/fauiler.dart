import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  const Failure({required this.message});
}

class ServerFailure extends Failure {
  const ServerFailure({required super.message});

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.cancel:
        return const ServerFailure(
            message: "Request to the server was cancelled.");
      case DioExceptionType.connectionTimeout:
        return const ServerFailure(
            message: "Connection timeout with the server.");
      case DioExceptionType.sendTimeout:
        return const ServerFailure(
            message: "Send timeout in connection with the server.");
      case DioExceptionType.receiveTimeout:
        return const ServerFailure(
            message: "Receive timeout in connection with the server.");
      case DioExceptionType.badResponse:
        return ServerFailure(
            message: _handleError(
                dioError.response?.statusCode, dioError.response?.data));
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SOCKETEXCEPTION')) {
          return const ServerFailure(message: "No Internet Connection.");
        }
        return const ServerFailure(
            message: "Unexpected error occurred. Please try again.");
      default:
        return const ServerFailure(
            message: "Something went wrong. Please try again.");
    }
  }

  static String _handleError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return "Bad request. Please try again.";
      case 401:
        return "Unauthorized request. Please check your credentials.";
      case 403:
        return "Access forbidden. You don't have permission to access this resource.";
      case 404:
        return "Requested resource not found.";
      case 500:
        return "Internal server error. Please try again later.";
      case 502:
        return "Bad gateway. Please try again later.";
      case 503:
        return "Service unavailable. Please try again later.";
      case 504:
        return "Gateway timeout. Please try again later.";
      default:
        return "Received invalid status code: $statusCode";
    }
  }
}
