import 'package:get/get.dart';
import 'code_resume_app_navigator.dart';
import 'presentation/pages/dashboard/dashboard_page.dart';

List<GetPage> codeResumeAppPages = [
  GetPage(
      name: '/',
      page: () {
        CodeResumeAppNavigator.to.handleRouteChanged(CodeResumeAppPage.dashboard);
        return const DashboardPage();
      }
  ),
];