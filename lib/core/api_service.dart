import 'package:dio/dio.dart';

class ApiService {
  const ApiService({required this.dio});
  final Dio dio;

  Future<Map<String, dynamic>> getData(String url) async {
    final response = await dio.get(url);
    return response.data;
  }
}
