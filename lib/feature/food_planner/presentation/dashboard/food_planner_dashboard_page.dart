import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:web_core/feature/food_planner/presentation/dashboard/views/food_planner_dashboard_about_view.dart';
import 'package:web_core/feature/food_planner/presentation/dashboard/views/food_planner_dashboard_planner_view.dart';
import 'package:web_core/feature/food_planner/presentation/dashboard/views/food_planner_dashboard_user_view.dart';
import 'food_planner_dashboard_controller.dart';
import 'food_planner_dashboard_state.dart';
import 'views/food_planner_dashboard_home_view.dart';
import '../templates/food_planner_page_menu_template.dart';

class FoodPlannerDashboardPage extends FoodPlannerPageMenuTemplate<
    FoodPlannerDashboardController, FoodPlannerDashboardState> {
  const FoodPlannerDashboardPage({Key? key, required String title})
      : super(title: title, key: key);

  @override
  FoodPlannerDashboardController createController() =>
      FoodPlannerDashboardController();

  @override
  List<NavigationPaneItem> buildFooterItems(
      FoodPlannerDashboardController controller,
      FoodPlannerDashboardState viewState,
      BuildContext context) {
    List<NavigationPaneItem> items = [];
    for (var item in FoodPlannerDashboardState.values) {
      if (item.isFooterMenuItem()) {
        items.add(
          PaneItem(
            body: buildPageContent(controller, viewState, context),
            title: Text(item.getMenuTitle()),
            icon: item.getMenuIcon(),
          ),
        );
      }
    }

    return items;
  }

  @override
  List<NavigationPaneItem> buildMenuItems(
      FoodPlannerDashboardController controller,
      FoodPlannerDashboardState viewState,
      BuildContext context) {
    List<NavigationPaneItem> items = [];
    for (var item in FoodPlannerDashboardState.values) {
      if (item.isMenuItem()) {
        items.add(
          PaneItem(
            body: buildPageContent(controller, viewState, context),
            title: Text(item.getMenuTitle()),
            icon: item.getMenuIcon(),
          ),
        );
      }
    }

    return items;
  }

  @override
  Widget buildPageContent(FoodPlannerDashboardController controller,
      FoodPlannerDashboardState viewState, BuildContext context) {
    switch (viewState) {
      case FoodPlannerDashboardState.home:
        return FoodPlannerDashboardHomeView(builder: () => FoodPlannerDashboardHomeViewController(),);
      case FoodPlannerDashboardState.planner:
        return FoodPlannerDashboardPlannerView(builder: () => FoodPlannerDashboardPlannerViewController(),);
      case FoodPlannerDashboardState.user:
        return FoodPlannerDashboardUserView(builder: () => FoodPlannerDashboardUserViewController(),);
      case FoodPlannerDashboardState.about:
        return FoodPlannerDashboardAboutView(builder: () => FoodPlannerDashboardAboutViewController(),);
    }
  }

  @override
  getSelectedIndex(FoodPlannerDashboardState viewState) {
    return viewState.getMenuItemIndex();
  }

  @override
  onMenuItemChangedCallback(FoodPlannerDashboardController controller, int value) {
    controller.handleMenuItemTapped(value);
  }
}
