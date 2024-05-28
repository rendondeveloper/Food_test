import 'dart:async';
import 'package:food_test/core/feature/favoritie/data/data_source/favorite_data_source.dart';
import 'package:food_test/features/home/data/config/response/food_data/food_data.dart';
import 'package:food_test/features/home/data/data_source/home_data_source.dart';
import 'package:util_commons/utils/network/config/response/response_general.dart';

class HomeRepository {
  final HomeDataSource _remoteDataSource;
  final FavoriteDataSource _favoriteLocalDataSource;

  HomeRepository(this._remoteDataSource, this._favoriteLocalDataSource);

  Future<ResponseGeneral<FoodData?>> getHomeData() async {
    final result = await _remoteDataSource.getHomeData();

    if (result.error != null) {
      throw result.error!;
    }

    if (result.success != null) {
      final favorities = await _favoriteLocalDataSource.getFavorities();

      for (var item in result.success!.meals!) {
        if (favorities.where((fav) => fav.identifier == item.idMeal).isNotEmpty) {
          item.isFavorite = true;
        }
      }
    }

    return result;
  }
}
