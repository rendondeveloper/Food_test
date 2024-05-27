import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_detail_ingredient.freezed.dart';

@freezed
class FoodDetailIngredient with _$FoodDetailIngredient {
  const factory FoodDetailIngredient(
      {@Default(null) String? name,
      @Default(null) String? imageUrl}) = _FoodDetailIngredient;

  const FoodDetailIngredient._();
}
