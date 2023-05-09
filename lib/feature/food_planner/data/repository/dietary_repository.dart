import '../../domain/entities/dietary_plan.dart';
import '../../../../core/abstractions/base_use_case.dart';
import '../../domain/use_cases/create_dietary_plan_use_case.dart';
import '../data_source/open_ai_data_source.dart';

abstract class DietaryRepository extends BaseRepository {
  /// Returns a singleton instance of OpenAi data source
  FoodPlannerOpenAiDataSource get foodPlannerOpenAiDataSource;

  /// Returns a String of raw data from Open Ai data source
  Future<String> getDietaryPlanDataFromDatasource(
      {required List<String> assistantMessages,
      required List<String> userMessages,});

  /// Returns a optional DietaryPlan entity from raw String data, returns null if parsing data failed
  Future<DietaryPlan?> parseDietaryPlanRawData({required String rawData});

  /// Returns List of user messages formatted for Open Ai data source based from user input messages
  List<String> getUserMessages({required String userRestrictions, required String userLifestyleHabits, required String userEatingHabits,});

  /// Returns a List of messages for open AI data source based on Dietary plan type provided
  List<String> getAssistantMessages({required DietaryPlanType type});
}
