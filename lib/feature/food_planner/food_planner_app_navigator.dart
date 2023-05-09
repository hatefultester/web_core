import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../core/abstractions/base_app_navigator.dart';

enum FoodPlannerAppPage {
  dashboard, contact
}

extension FoodPlannerAppPageExtension on FoodPlannerAppPage {
  String route() => describeEnum(this);
}

FoodPlannerAppPage defaultRoute = FoodPlannerAppPage.dashboard;

class FoodPlannerAppNavigator extends BaseAppNavigator<FoodPlannerAppPage> {
  static FoodPlannerAppNavigator get to => Get.find();

  @override
  FoodPlannerAppPage defaultPage() => FoodPlannerAppPage.dashboard;
}
