
import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';

import '../../../../domain/use_cases/create_dietary_plan/kh_create_dietary_plan_use_case_params.dart';
import '../../../../domain/use_cases/create_dietary_plan/kh_dietary_plan_type.dart';
import '../../../shared/mixin/kh_progress_hud_mixin.dart';
import '../../../../../../core/abstractions/simple_controller.dart';
import '../../../../domain/use_cases/create_dietary_plan/kh_create_dietary_plan_use_case.dart';

class KhPlannerViewController extends SimpleController with KhProgressHudMixin {
  final TextEditingController userLifestyleHabitsTextField = TextEditingController();
  final TextEditingController userRestrictionsTextField = TextEditingController();
  final TextEditingController userEatingHabitsTextField = TextEditingController();

  final KhCreateDietaryPlanUseCase _createDietaryPlanUseCase = Get.find<KhCreateDietaryPlanUseCase>();

  @override
  Future<void> initController() async {}

  handleMealPlanGeneratedButtonTapped() async {
    showProgressHud();
    await _createDietaryPlanUseCase.execute(
      params: KhCreateDietaryPlanUseCaseParams(
        dietaryPlanType: KhDietaryPlanType.threeDayPlan,
        userEatingHabitsOutput: userEatingHabitsTextField.value.text,
        userLifestyleHabitsOutput: userLifestyleHabitsTextField.value.text,
        userRestrictionsOutput: userRestrictionsTextField.value.text,
      ),
    );
    hideProgressHud();
  }
}
