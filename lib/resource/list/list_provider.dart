import 'package:dio/dio.dart';
import 'package:food_view/models/food_model.dart';

class ListProvider {
  final Dio _dio = Dio();
  final String _url = "https://www.themealdb.com/api/json/v1/1/search.php?f=c";

  Future<FoodModel> fetchFoodList() async {
    try {
      Response response = await _dio.get(_url);
      print(response.data);
      return FoodModel.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return FoodModel.withError("Data not found / Connection issue");
    }
  }
}
