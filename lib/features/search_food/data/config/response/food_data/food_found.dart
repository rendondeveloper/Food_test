import 'meal_short.dart';

class FoodFound {
  List<MealShort>? meals;

  FoodFound({this.meals});

  factory FoodFound.fromJson(Map<String, dynamic> json) => FoodFound(
        meals: (json['meals'] as List<dynamic>?)
            ?.map((e) => MealShort.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'meals': meals?.map((e) => e.toJson()).toList(),
      };
}
