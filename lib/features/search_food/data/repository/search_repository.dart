import 'dart:async';
import 'package:food_test/features/search_food/data/config/response/food_data/food_found.dart';
import 'package:food_test/features/search_food/data/data_source/search_data_source.dart';
import 'package:util_commons/utils/network/config/response/response_general.dart';

class SearchRepository {
  final SearchDataSource _remoteDataSource;

  SearchRepository(this._remoteDataSource);

  Future<ResponseGeneral<FoodFound?>> searchFoodData(String text) =>
      _remoteDataSource.searchFoodData(text);
}
