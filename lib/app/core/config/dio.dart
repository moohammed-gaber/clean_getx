import 'package:dio/dio.dart';

class ConfiguredDio {
  late final Dio dio;

  ConfiguredDio() {
    dio = Dio();
    dio.options.baseUrl = 'https://jsonplaceholder.typicode.com';
  }
}
