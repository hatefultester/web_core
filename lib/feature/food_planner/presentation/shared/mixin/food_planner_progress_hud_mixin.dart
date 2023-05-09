mixin FoodPlannerProgressHudMixin {

  showProgressHud() {
    Get.dialog(NavigationView(

    ));
  }

  hideProgressHud() => Get.back();
}