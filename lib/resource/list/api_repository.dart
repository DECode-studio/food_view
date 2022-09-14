import 'package:food_view/models/food_model.dart';
import 'package:food_view/resource/list/api_provider.dart';

class ApiRepository {
  final _provider = ApiProvider();

  Future<FoodModel> fetchFoodList() {
    return _provider.fetchFoodList();
  }
}
