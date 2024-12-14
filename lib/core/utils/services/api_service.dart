part of '../../index.dart';

class ApiService {
  final Dio _dio;

  const ApiService(this._dio);

  final baseURL = 'https://www.googleapis.com/books/v1';

  Future<Map<String, dynamic>> get({
    required String endPoint,
  }) async {
    _dio.options.headers['Accept'] = 'application/json';

    log('+++++++++base url: $baseURL/$endPoint++++++++++++++');
    var response = await _dio.get('$baseURL/$endPoint');
    log('=======data response: ${response.data}===============');
    return response.data;
  }
}
