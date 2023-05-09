import 'package:flutter/material.dart';
import 'package:web_core/core/abstractions/base_controller.dart';
import 'package:web_core/core/enums/device_screen_type.dart';
import 'package:web_core/feature/code_resume/presentation/templates/code_resume_view_template.dart';

class DashboardBasicView extends CodeResumeViewTemplate {
  const DashboardBasicView({Key? key}) : super(key: key);

  @override
  List<Widget> buildView(BaseController<dynamic> controller, DeviceScreenType screenType, BuildContext context) {
    return [

    ];
  }

}