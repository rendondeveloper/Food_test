import 'package:food_test/features/home/data/config/response/food_data/food_data.dart';
import 'package:food_test/features/home/data/repository/home_repository.dart';
import 'package:util_commons/utils/network/config/response/response_general.dart';

class GetHomeDataUseCases {
  final HomeRepository _repository;

  GetHomeDataUseCases(this._repository);

  Future<ResponseGeneral<FoodData?>> invoke() {
    return _repository.getHomeData();
  }
}
