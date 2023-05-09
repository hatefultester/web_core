import 'dart:convert';

class DietaryPlan {
  final List<DayPlan> dayPlans;
  final String recommendation;

  DietaryPlan(this.dayPlans, this.recommendation);

  factory DietaryPlan.fromJson(Map<String, dynamic> json) {
    return DietaryPlan(
      (json['dayPlans'] as List).map((dayPlan) => DayPlan.fromJson(dayPlan)).toList(),
      json['recommendation'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'dayPlans': dayPlans.map((dayPlan) => dayPlan.toJson()).toList(),
      'recommendation': recommendation,
    };
  }
}

class DayPlan {
  final List<Meal> meals;

  DayPlan(this.meals);

  factory DayPlan.fromJson(Map<String, dynamic> json) {
    return DayPlan(
      (json['meals'] as List).map((meal) => Meal.fromJson(meal)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'meals': meals.map((meal) => meal.toJson()).toList(),
    };
  }
}

class Meal {
  final String name;
  final String food;
  final String drink;
  final int calorieInKcal;
  final int fatInGrams;
  final int carbInGrams;
  final int sugarInGrams;
  final int proteinInGrams;

  Meal(this.name, this.food, this.drink, this.calorieInKcal, this.fatInGrams,
      this.carbInGrams, this.sugarInGrams, this.proteinInGrams);

  factory Meal.fromJson(Map<String, dynamic> json) {
    return Meal(
      json['name'],
      json['food'],
      json['drink'],
      json['calorieInKcal'],
      json['fatInGrams'],
      json['carbInGrams'],
      json['sugarInGrams'],
      json['proteinInGrams'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'food': food,
      'drink': drink,
      'calorieInKcal': calorieInKcal,
      'fatInGrams': fatInGrams,
      'carbInGrams': carbInGrams,
      'sugarInGrams': sugarInGrams,
      'proteinInGrams': proteinInGrams,
    };
  }
}
