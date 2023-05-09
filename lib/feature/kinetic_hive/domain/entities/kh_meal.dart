
class KhMeal {
  final String name;
  final String food;
  final String drink;
  final int calorieInKcal;
  final int fatInGrams;
  final int carbInGrams;
  final int sugarInGrams;
  final int proteinInGrams;

  KhMeal(this.name, this.food, this.drink, this.calorieInKcal, this.fatInGrams,
      this.carbInGrams, this.sugarInGrams, this.proteinInGrams);

  factory KhMeal.fromJson(Map<String, dynamic> json) {
    return KhMeal(
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
