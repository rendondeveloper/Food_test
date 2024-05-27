import 'meal.dart';

class FoodData {
  List<Meal>? meals;

  FoodData({this.meals});

  factory FoodData.fromJson(Map<String, dynamic> json) => FoodData(
        meals: (json['meals'] as List<dynamic>?)
            ?.map((e) => Meal.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'meals': meals?.map((e) => e.toJson()).toList(),
      };
}
