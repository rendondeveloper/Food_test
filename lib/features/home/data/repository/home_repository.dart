import 'dart:async';
import 'package:food_test/features/home/data/config/response/food_data/food_data.dart';
import 'package:food_test/features/home/data/data_source/home_data_source.dart';
import 'package:util_commons/utils/network/config/response/response_general.dart';

class HomeRepository {
  final HomeDataSource _remoteDataSource;

  HomeRepository(this._remoteDataSource);

  Future<ResponseGeneral<FoodData?>> getHomeData() async {
    final result = await _remoteDataSource.getHomeData();

    if (result.error != null) {
      throw result.error!;
    }

    
    /*if (result.success != null) {
      await _remoteDataSource.getHomeData();
    }*/

    return result;
  }
}
