import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../core/abstractions/base_app_navigator.dart';

enum CodeResumeAppPage {
  dashboard, contact
}

extension CodeResumeAppExtension on CodeResumeAppPage {
  String route() => describeEnum(this);
}

CodeResumeAppPage defaultRoute = CodeResumeAppPage.dashboard;

class CodeResumeAppNavigator extends BaseAppNavigator<CodeResumeAppPage> {
  static CodeResumeAppNavigator get to => Get.find();

  @override
  CodeResumeAppPage defaultPage() => CodeResumeAppPage.dashboard;
}
