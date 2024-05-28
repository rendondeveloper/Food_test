class MealShort {
  String? idMeal;
  String? strMeal;
  dynamic strMealThumb;

  MealShort({
    this.idMeal,
    this.strMeal,
    this.strMealThumb,
  });

  factory MealShort.fromJson(Map<String, dynamic> json) => MealShort(
        idMeal: json['idMeal'] as String?,
        strMeal: json['strMeal'] as String?,
        strMealThumb: json['strMealThumb'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'idMeal': idMeal,
        'strMeal': strMeal,
        'strMealThumb': strMealThumb,
      };
}
