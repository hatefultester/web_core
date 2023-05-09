
import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';

import '../../../../../../core/abstractions/simple_controller.dart';
import '../../../../domain/use_cases/create_dietary_plan_use_case.dart';

class FoodPlannerDashboardPlannerViewController extends SimpleController {
  final TextEditingController userLifestyleHabitsTextField = TextEditingController();
  final TextEditingController userRestrictionsTextField = TextEditingController();
  final TextEditingController userEatingHabitsTextField = TextEditingController();

  final CreateDietaryPlanUseCase _createDietaryPlanUseCase = Get.find<CreateDietaryPlanUseCase>();

  @override
  Future<void> initController() async {}

  handleMealPlanGenerated() {
    _createDietaryPlanUseCase.execute(
      params: CreateDietaryPlanUseCaseParams(
        dietaryPlanType: DietaryPlanType.threeDayPlan,
        userEatingHabitsOutput: userEatingHabitsTextField.value.text,
        userLifestyleHabitsOutput: userLifestyleHabitsTextField.value.text,
        userRestrictionsOutput: userRestrictionsTextField.value.text,
      ),
    );
  }
}
