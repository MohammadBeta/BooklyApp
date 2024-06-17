import 'package:dio/dio.dart';

class ApiService {
  final _dio = Dio();

  Future<Map<String, dynamic>> getData(String url) async {
    final response = await _dio.get(url);
    return response.data;
  }
}
