import 'package:food_test/features/detail/data/config/response/food_detail/food_test/meal_detail.dart';
import 'package:food_test/features/detail/data/repository/detail_repository.dart';
import 'package:util_commons/utils/network/config/response/response_general.dart';

class GetDatailUseCases {
  final DetailRepository _repository;

  GetDatailUseCases(this._repository);

  Future<ResponseGeneral<MealDetail?>> invoke(String identifier) {
    return _repository.getDetail(identifier);
  }
}
