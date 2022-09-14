import 'package:dio/dio.dart';

class DetailProvide {
  final Dio dio = Dio();
  final String url =
      "https://www.themealdb.com/api/json/v1/1/lookup.php?i=52772";
}
