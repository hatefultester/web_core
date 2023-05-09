import 'package:flutter/material.dart';
import 'package:web_core/feature/code_resume/presentation/pages/dashboard/views/dashboard_basic_view.dart';
import 'package:web_core/feature/code_resume/presentation/templates/code_resume_page_template.dart';

import 'dashboard_controller.dart';
import 'dashboard_controller_view_state.dart';

class DashboardPage extends CodeResumePageTemplate<DashboardController, DashboardControllerViewState> {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  DashboardController createController() => DashboardController();

  @override
  buildPage(DashboardController controller, DashboardControllerViewState viewState, BuildContext context) {
    switch (viewState) {

      case DashboardControllerViewState.basic:
        return const DashboardBasicView();
    }
  }


}
