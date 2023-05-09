
import '../../../../core/abstractions/base_controller.dart';
import 'food_planner_dashboard_state.dart';

class FoodPlannerDashboardController extends BaseController<FoodPlannerDashboardState> {

  final FoodPlannerDashboardState initState;

  FoodPlannerDashboardController({required this.initState});

  @override
  Future<void> initController() async {
    await delay();
  }

  @override
  Future<FoodPlannerDashboardState> initViewState() async => initState;

  void handleMenuItemTapped(int value) {
    FoodPlannerDashboardState? _newState = getDashboardMenuItemFromIndex(value);
    if (_newState is FoodPlannerDashboardState) {
      setViewState(_newState);
    }
  }

}