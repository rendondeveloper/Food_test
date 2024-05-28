import 'package:food_test/features/search_food/data/config/response/food_data/food_found.dart';
import 'package:food_test/features/search_food/data/repository/search_repository.dart';
import 'package:util_commons/utils/network/config/response/response_general.dart';

class SearchFoodDataUseCases {
  final SearchRepository _repository;

  SearchFoodDataUseCases(this._repository);

  Future<ResponseGeneral<FoodFound?>> invoke(String text) {
    return _repository.searchFoodData(text);
  }
}
