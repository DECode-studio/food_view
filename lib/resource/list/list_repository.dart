import 'package:food_view/models/food_model.dart';
import 'package:food_view/resource/list/list_provider.dart';

class ListRepository {
  final _provider = ListProvider();

  Future<FoodModel> fetchFoodList() {
    return _provider.fetchFoodList();
  }
}

class NetworkError extends Error {}
