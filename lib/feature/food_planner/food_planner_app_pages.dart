
import 'package:get/get.dart';

import 'food_planner_app_navigator.dart';
import 'presentation/app_core/food_planner_dashboard_page.dart';

List<GetPage> foodPlannerAppPages = [
  GetPage(
      name: '/',
      page: () {
        FoodPlannerAppNavigator.to.handleRouteChanged(FoodPlannerAppPage.dashboard);
        return const FoodPlannerDashboardPage(title: 'Dashboard',);
      }
  ),
];