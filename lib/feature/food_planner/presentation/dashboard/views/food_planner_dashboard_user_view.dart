import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import '../../../../../core/abstractions/simple_controller.dart';
import '../../../../../core/enums/device_screen_type.dart';
import '../../templates/food_planner_view_template.dart';

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

class FoodPlannerDashboardUserViewController extends SimpleController {

  @override
  Future<void> initController() async {

  }
}
