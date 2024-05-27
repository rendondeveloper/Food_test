import 'package:food_test/core/const/configuration_api.dart';
import 'package:food_test/core/utils/country_converter.dart';
import 'package:food_test/features/home/data/config/response/food_data/meal.dart';
import 'package:food_test/features/home/domain/state/food_item.dart';
import 'package:util_commons/utils/helpers/mapper.dart';

class MealToFoodItem implements Mapper<Meal, FoodItem> {
  final CountryCodeConverter _converter;

  MealToFoodItem(this._converter);

  @override
  FoodItem map(Meal input) {
    final flag = _converter.getCountryCode(input.strArea!);

    return FoodItem(
      identifier: input.idMeal,
      name: input.strMeal,
      imageUrl: input.strMealThumb,
      countryFlagUrl:
          flag != null ? "$baseImageCountry$flag$baseImageExtencion" : null,
    );
  }
}
