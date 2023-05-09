import 'package:fluent_ui/fluent_ui.dart';

import '../shared/food_planner_page_with_menu.dart';
import 'food_planner_dashboard_controller.dart';
import 'food_planner_dashboard_state.dart';
import 'views/about/food_planner_dashboard_about_view.dart';
import 'views/home/food_planner_dashboard_home_view.dart';
import 'views/planner/food_planner_dashboard_planner_view.dart';
import 'views/user/food_planner_dashboard_user_view.dart';

class FoodPlannerDashboardPage extends FoodPlannerPageMenuTemplate<
    FoodPlannerDashboardController, FoodPlannerDashboardState> {
  final FoodPlannerDashboardState initState;

  const FoodPlannerDashboardPage(
      {Key? key,
      required String title,
      this.initState = FoodPlannerDashboardState.home})
      : super(title: title, key: key);

  @override
  FoodPlannerDashboardController createController() =>
      FoodPlannerDashboardController(initState: initState);

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
        return const FoodPlannerDashboardHomeView();
      case FoodPlannerDashboardState.planner:
        return const FoodPlannerDashboardPlannerView();
      case FoodPlannerDashboardState.user:
        return const FoodPlannerDashboardUserView();
      case FoodPlannerDashboardState.about:
        return const FoodPlannerDashboardAboutView();
    }
  }

  @override
  getSelectedIndex(FoodPlannerDashboardState viewState) {
    return viewState.getMenuItemIndex();
  }

  @override
  onMenuItemChangedCallback(
      FoodPlannerDashboardController controller, int value) {
    controller.handleMenuItemTapped(value);
  }
}
