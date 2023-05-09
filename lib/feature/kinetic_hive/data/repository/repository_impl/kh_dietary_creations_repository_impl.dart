import 'package:get/get.dart';

import '../../../domain/use_cases/create_dietary_plan/kh_dietary_plan_type.dart';
import '../../data_source/kh_open_ai_data_source.dart';
import '../../../domain/entities/kh_dietary_plan.dart';
import '../kh_dietary_creation_repository.dart';

class KhDietaryCreationRepositoryImpl implements DietaryRepository {
  @override
  KhOpenAiDataSource get foodPlannerOpenAiDataSource =>
      Get.find<KhOpenAiDataSource>();

  @override
  List<String> getAssistantMessages({required KhDietaryPlanType type}) {
    return [
      "generate me JSON Object valid CODE ONLY i will use it to create dietaryPlan for my users...",
      """
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
  ...

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
      """
          "user provided, that he wants this type of meal plan ${type.toString()}",
      "User will provide you his lifestyle habits, his eating habits and his restrictions, please generate coresponding JSON structure based on provided information and meal plan type."
    ];
  }

  @override
  Future<String> getDietaryPlanDataFromDatasource(
          {required List<String> assistantMessages,
          required List<String> userMessages}) async =>
      await foodPlannerOpenAiDataSource.openAiRequest(
          userMessages: userMessages, assistantMessages: assistantMessages);

  @override
  List<String> getUserMessages(
      {required String userRestrictions,
      required String userLifestyleHabits,
      required String userEatingHabits}) {
    return [
      "User restriction: $userRestrictions",
      "User lifestyle: $userLifestyleHabits",
      "User eating habits: $userEatingHabits",
    ];
  }

  @override
  Future<KhDietaryPlan?> parseDietaryPlanRawData(
      {required String rawData}) async {
    print(rawData);

    return null;
  }
}
