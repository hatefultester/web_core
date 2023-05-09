
import 'package:get/get.dart';

import 'kh_app_navigator.dart';
import 'presentation/app_core/kh_core_page.dart';

List<GetPage> khAppPages = [
  GetPage(
      name: '/',
      page: () {
        KhAppNavigator.to.handleRouteChanged(KhAppPage.dashboard);
        return const KhDashboardPage(title: 'Dashboard',);
      }
  ),
];