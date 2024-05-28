class Meal {
  String? idMeal;
  String? strMeal;
  String? strArea;
  String? strMealThumb;
  bool isFavorite;

  Meal(
      {this.idMeal,
      this.strMeal,
      this.strArea,
      this.strMealThumb,
      this.isFavorite = false});

  factory Meal.fromJson(Map<String, dynamic> json) => Meal(
        idMeal: json['idMeal'] as String?,
        strMeal: json['strMeal'] as String?,
        strArea: json['strArea'] as String?,
        strMealThumb: json['strMealThumb'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'idMeal': idMeal,
        'strMeal': strMeal,
        'strArea': strArea,
        'strMealThumb': strMealThumb,
      };
}
