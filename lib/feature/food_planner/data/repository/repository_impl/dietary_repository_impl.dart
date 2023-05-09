import 'package:get/get.dart';

import '../../data_source/open_ai_data_source.dart';
import '../../../domain/entities/dietary_plan.dart';
import '../../../domain/use_cases/create_dietary_plan_use_case.dart';
import '../dietary_repository.dart';

class DietaryRepositoryImpl implements DietaryRepository {
  @override
  FoodPlannerOpenAiDataSource get foodPlannerOpenAiDataSource =>
      Get.find<FoodPlannerOpenAiDataSource>();

  @override
  List<String> getAssistantMessages({required DietaryPlanType type}) {
    return [
      "Please generate me valid JSON object for my application, i will use it in code later, i need to parse it from string, so please only return Valid JSON response",
      "Please create a meal plan, JSON structure is {day: [...days]}, day has this structure {meals: [{description: ..., name: ...}]",
      "user provided, that he wants this type of meal plan ${type.toString()}"
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
      required String userEatingHabits})  {
    return [
      "User restriction: $userRestrictions",
      "User lifestyle: $userLifestyleHabits",
      "User eating habits: $userEatingHabits",
    ];
  }

  @override
  Future<DietaryPlan?> parseDietaryPlanRawData(
      {required String rawData}) async {
    print(rawData);

    return null;
  }
}
