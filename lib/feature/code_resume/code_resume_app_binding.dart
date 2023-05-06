import 'package:get/get.dart';

import 'code_resume_app_navigator.dart';

class CodeResumeAppBinding extends Bindings {
  @override
  Future<void> dependencies() async {

    Get.put<CodeResumeAppNavigator>(CodeResumeAppNavigator(), permanent: true);
  }

  CodeResumeAppBinding();
}
