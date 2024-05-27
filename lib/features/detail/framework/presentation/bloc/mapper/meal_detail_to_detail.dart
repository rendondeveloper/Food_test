import 'package:food_test/core/const/configuration_api.dart';
import 'package:food_test/features/detail/data/config/response/food_detail/food_test/meal_detail.dart';
import 'package:food_test/features/detail/domain/state/detail_state.dart';
import 'package:food_test/features/detail/domain/state/food_detail_ingredient.dart';
import 'package:food_test/features/detail/domain/state/food_detail_instruction.dart';
import 'package:util_commons/utils/helpers/mapper.dart';

class MealDetailToDetail implements Mapper<MealDetail, DetailState> {
  @override
  DetailState map(MealDetail input) {
    return DetailState(name: input.strMeal, instructions: [
      FoodDetailInstruction(description: input.strInstructions),
    ], ingredients: [
      FoodDetailIngredient(
          name: input.strIngredient1,
          imageUrl:
              "$baseImageIngredient${input.strIngredient1}$baseImageExtencion"),
      FoodDetailIngredient(
          name: input.strIngredient2,
          imageUrl:
              "$baseImageIngredient${input.strIngredient2}$baseImageExtencion"),
      FoodDetailIngredient(
          name: input.strIngredient3,
          imageUrl:
              "$baseImageIngredient${input.strIngredient3}$baseImageExtencion"),
      FoodDetailIngredient(
          name: input.strIngredient4,
          imageUrl:
              "$baseImageIngredient${input.strIngredient4}$baseImageExtencion"),
      FoodDetailIngredient(
          name: input.strIngredient5,
          imageUrl:
              "$baseImageIngredient${input.strIngredient5}$baseImageExtencion"),
      FoodDetailIngredient(
          name: input.strIngredient6,
          imageUrl:
              "$baseImageIngredient${input.strIngredient6}$baseImageExtencion"),
      FoodDetailIngredient(
          name: input.strIngredient7,
          imageUrl:
              "$baseImageIngredient${input.strIngredient7}$baseImageExtencion"),
      FoodDetailIngredient(
          name: input.strIngredient8,
          imageUrl:
              "$baseImageIngredient${input.strIngredient8}$baseImageExtencion"),
      FoodDetailIngredient(
          name: input.strIngredient9,
          imageUrl:
              "$baseImageIngredient${input.strIngredient9}$baseImageExtencion"),
      FoodDetailIngredient(
          name: input.strIngredient10,
          imageUrl:
              "$baseImageIngredient${input.strIngredient10}$baseImageExtencion"),
      FoodDetailIngredient(
          name: input.strIngredient11,
          imageUrl:
              "$baseImageIngredient${input.strIngredient11}$baseImageExtencion")
    ]);
  }
}
