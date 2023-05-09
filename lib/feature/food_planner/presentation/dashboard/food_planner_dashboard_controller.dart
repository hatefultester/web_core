import 'package:web_core/feature/food_planner/presentation/dashboard/food_planner_dashboard_state.dart';

import '../../../../core/abstractions/base_controller.dart';

class FoodPlannerDashboardController extends BaseController<FoodPlannerDashboardState> {

  @override
  Future<void> initController() async {
    await delay();
  }

  @override
  Future<FoodPlannerDashboardState> initViewState() async => FoodPlannerDashboardState.home;

  void handleMenuItemTapped(int value) {
    FoodPlannerDashboardState? _newState = getDashboardMenuItemFromIndex(value);
    if (_newState is FoodPlannerDashboardState) {
      setViewState(_newState);
    }
  }

}