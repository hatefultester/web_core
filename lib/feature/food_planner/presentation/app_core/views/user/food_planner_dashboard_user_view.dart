import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import '../../../../../../core/enums/device_screen_type.dart';
import '../../../shared/views/food_planner_view.dart';
import 'food_planner_dashboard_user_view_controller.dart';

class FoodPlannerDashboardUserView
    extends FoodPlannerViewTemplate<FoodPlannerDashboardUserViewController> {

  FoodPlannerDashboardUserView({Key? key, required InstanceBuilderCallback<FoodPlannerDashboardUserViewController> builder}) : super(key: key, builder: builder);

  @override
  List<Widget> buildView(FoodPlannerDashboardUserViewController controller,
      DeviceScreenType screenType, BuildContext context) {
    return [
      Text('This is User view')
    ];
  }
}
