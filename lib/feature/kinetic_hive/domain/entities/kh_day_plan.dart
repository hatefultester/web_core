

import 'kh_meal.dart';

class KhDayPlan {
  final List<KhMeal> meals;

  KhDayPlan(this.meals);

  factory KhDayPlan.fromJson(Map<String, dynamic> json) {
    return KhDayPlan(
      (json['meals'] as List).map((meal) => KhMeal.fromJson(meal)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'meals': meals.map((meal) => meal.toJson()).toList(),
    };
  }
}
