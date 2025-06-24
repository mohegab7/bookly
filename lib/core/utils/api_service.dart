import 'package:dio/dio.dart';

class Api_Service {
  final Dio _dio;
  final base_url = 'https://www.googleapis.com/books/v1/';
  Api_Service(this._dio);
  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await _dio.get('$base_url$endpoint');
    return response.data;
  }
}
