import 'dart:async';
import 'package:food_test/features/detail/data/config/response/food_detail/food_test/meal_detail.dart';
import 'package:food_test/features/detail/data/data_source/detail_data_source.dart';
import 'package:util_commons/utils/network/config/response/response_general.dart';

class DetailRepository {
  final DetailDataSource _remoteDataSource;

  DetailRepository(this._remoteDataSource);

  Future<ResponseGeneral<MealDetail?>> getDetail(String identifier) async {
    final result = await _remoteDataSource.getDetail(identifier);

    if (result.error != null) {
      throw result.error!;
    }

    /*if (result.success != null) {
      await _remoteDataSource.getHomeData();
    }*/

    return result;
  }
}
