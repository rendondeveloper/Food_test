import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_item.freezed.dart';

@freezed
class FoodItem with _$FoodItem {
  const factory FoodItem(
      {@Default(null) String? identifier,
      @Default(null) String? name,
      @Default(null) String? imageUrl,
      @Default(null) String? countryFlagUrl,
      @Default(false) bool isFavorite}) = _FoodItem;

  const FoodItem._();
}
