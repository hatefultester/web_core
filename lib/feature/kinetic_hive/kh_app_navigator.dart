import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../core/abstractions/base_app_navigator.dart';

enum KhAppPage {
  dashboard, contact
}

extension KhAppPageExtension on KhAppPage {
  String route() => describeEnum(this);
}

KhAppPage khDefaultRoute = KhAppPage.dashboard;

class KhAppNavigator extends BaseAppNavigator<KhAppPage> {
  static KhAppNavigator get to => Get.find();

  @override
  KhAppPage defaultPage() => KhAppPage.dashboard;
}
