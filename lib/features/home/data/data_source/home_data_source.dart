import 'package:food_test/core/const/configuration_api.dart';
import 'package:food_test/features/home/data/config/response/food_data/food_data.dart';
import 'package:util_commons/utils/network/apiconnect.dart';
import 'package:util_commons/utils/network/config/response/response_general.dart';

class HomeDataSource {
  final ApiConnect _apiConnect;

  HomeDataSource(this._apiConnect);

  Future<ResponseGeneral<FoodData?>> getHomeData() async {
    FoodData? result;
    ErrorGeneral? error;

    final response = await _apiConnect.executeGet(path: latest);
    if (response.isSuccess) {
      result = FoodData.fromJson(response.mapValueJson!);
    } else {
      error = ErrorGeneral(response.exception);
    }

    return ResponseGeneral<FoodData?>(result, error);
  }
}
