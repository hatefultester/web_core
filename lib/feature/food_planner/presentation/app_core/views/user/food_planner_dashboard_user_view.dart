import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import '../../../../../../core/enums/device_screen_type.dart';
import '../../../shared/views/food_planner_view.dart';
import 'food_planner_dashboard_user_view_controller.dart';

class FoodPlannerDashboardUserView
    extends FoodPlannerViewTemplate<FoodPlannerDashboardUserViewController> {

  const FoodPlannerDashboardUserView({Key? key}) : super(key: key);

  @override
  List<Widget> buildView(FoodPlannerDashboardUserViewController controller,
      DeviceScreenType screenType, BuildContext context) {
    return [

    ];
  }

  @override
  FoodPlannerDashboardUserViewController builder() => FoodPlannerDashboardUserViewController();
}
