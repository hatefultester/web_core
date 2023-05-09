
import 'kh_dietary_plan_type.dart';

class KhCreateDietaryPlanUseCaseParams {
  final String userRestrictionsOutput;
  final String userLifestyleHabitsOutput;
  final String userEatingHabitsOutput;
  final KhDietaryPlanType dietaryPlanType;

  KhCreateDietaryPlanUseCaseParams({
    required this.userRestrictionsOutput,
    required this.userLifestyleHabitsOutput,
    required this.userEatingHabitsOutput,
    required this.dietaryPlanType,
  });
}