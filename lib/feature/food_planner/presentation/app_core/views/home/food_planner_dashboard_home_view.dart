import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';

import '../../../../../../core/abstractions/simple_controller.dart';
import '../../../../../../core/enums/device_screen_type.dart';
import '../../../shared/views/food_planner_view.dart';
import 'food_planner_dashboard_home_view_controller.dart';

class FoodPlannerDashboardHomeView
    extends FoodPlannerViewTemplate<FoodPlannerDashboardHomeViewController> {

  const FoodPlannerDashboardHomeView({Key? key}) : super(key: key);

  @override
  List<Widget> buildView(FoodPlannerDashboardHomeViewController controller,
      DeviceScreenType screenType, BuildContext context) {
    return [
      Text('This is Home view')
    ];
  }

  @override
  FoodPlannerDashboardHomeViewController builder() => FoodPlannerDashboardHomeViewController();
}
