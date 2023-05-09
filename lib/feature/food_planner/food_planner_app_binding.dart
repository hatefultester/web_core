import 'package:get/get.dart';

import 'food_planner_app_navigator.dart';

class FoodPlannerAppBinding extends Bindings {
  @override
  Future<void> dependencies() async {

    Get.put<FoodPlannerAppNavigator>(FoodPlannerAppNavigator(), permanent: true);
  }

  FoodPlannerAppBinding();
}
