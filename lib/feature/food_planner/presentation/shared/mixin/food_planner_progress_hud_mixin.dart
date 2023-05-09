import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';

mixin FoodPlannerProgressHudMixin {

  showProgressHud() {
    Get.dialog(const NavigationView(
      content: Center(child: ProgressRing()),
    ),);
  }

  hideProgressHud() => Get.back();
}