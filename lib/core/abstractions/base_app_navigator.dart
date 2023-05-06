import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

abstract class BaseAppNavigator<T extends Enum> extends GetxService {

  Rx<T?> currentAppPage = Rxn();

  Rx<T?> previousAppPage = Rxn();

  T defaultPage();

  @override
  void onInit() {
    super.onInit();
    currentAppPage.value = defaultPage();
  }

  void handleRouteChanged(T page) {
    previousAppPage.value = currentAppPage.value;
    currentAppPage.value = page;
  }

  void toPage(T page) {
    Get.toNamed('/${describeEnum(page)}');
  }

  void home() => toPage(defaultPage());
}