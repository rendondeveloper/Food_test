import 'package:food_test/features/search_food/data/config/response/food_data/meal_short.dart';
import 'package:food_test/features/search_food/domain/state/search_item.dart';
import 'package:util_commons/utils/helpers/mapper.dart';

class MealShortToSeachItem implements Mapper<MealShort, SearchItem> {
  @override
  SearchItem map(MealShort input) {
    return SearchItem(
        identifier: input.idMeal,
        name: input.strMeal,
        imageUrl: input.strMealThumb);
  }
}
