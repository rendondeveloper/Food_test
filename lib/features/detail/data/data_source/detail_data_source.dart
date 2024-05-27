import 'package:food_test/core/const/configuration_api.dart';
import 'package:food_test/features/detail/data/config/response/food_detail/food_test/food_detail.dart';
import 'package:food_test/features/detail/data/config/response/food_detail/food_test/meal_detail.dart';
import 'package:util_commons/utils/network/apiconnect.dart';
import 'package:util_commons/utils/network/config/response/response_general.dart';

class DetailDataSource {
  final ApiConnect _apiConnect;

  DetailDataSource(this._apiConnect);

  Future<ResponseGeneral<MealDetail?>> getDetail(String identiier) async {
    MealDetail? result;
    ErrorGeneral? error;

    final response =
        await _apiConnect.executeGet(params: {"i": identiier}, path: latest);
    if (response.isSuccess) {
      final data = FoodDetail.fromJson(response.mapValueJson!);
      result = data.meals?.firstOrNull;
    } else {
      error = ErrorGeneral(response.exception);
    }

    return ResponseGeneral<MealDetail?>(result, error);
  }
}
