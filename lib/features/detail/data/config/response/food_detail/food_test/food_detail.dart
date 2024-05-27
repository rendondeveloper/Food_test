import 'meal_detail.dart';

class FoodDetail {
  List<MealDetail>? meals;

  FoodDetail({this.meals});

  factory FoodDetail.fromJson(Map<String, dynamic> json) => FoodDetail(
        meals: (json['meals'] as List<dynamic>?)
            ?.map((e) => MealDetail.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'meals': meals?.map((e) => e.toJson()).toList(),
      };
}
