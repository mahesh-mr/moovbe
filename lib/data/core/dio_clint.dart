import 'package:dio/dio.dart';

class DioClient {
  static Dio dio = Dio(
    BaseOptions(
      baseUrl: "http://flutter.noviindus.co.in/api/",
    ),
  );
}
