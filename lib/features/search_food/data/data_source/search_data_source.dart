import 'package:food_test/core/const/configuration_api.dart';
import 'package:food_test/features/search_food/data/config/response/food_data/food_found.dart';
import 'package:util_commons/utils/network/apiconnect.dart';
import 'package:util_commons/utils/network/config/response/response_general.dart';

class SearchDataSource {
  final ApiConnect _apiConnect;

  SearchDataSource(this._apiConnect);

  Future<ResponseGeneral<FoodFound?>> searchFoodData(String text) async {
    FoodFound? result;
    ErrorGeneral? error;

    final response = await _apiConnect
        .executeGet(params: {searchParam: text}, path: searchUri);
    if (response.isSuccess) {
      result = FoodFound.fromJson(response.mapValueJson!);
    } else {
      error = ErrorGeneral(response.exception);
    }

    return ResponseGeneral<FoodFound?>(result, error);
  }
}
