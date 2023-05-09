import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import '../../../../../core/abstractions/simple_controller.dart';
import '../../../../../core/enums/device_screen_type.dart';
import '../../templates/food_planner_view_template.dart';

class FoodPlannerDashboardPlannerView
    extends FoodPlannerViewTemplate<FoodPlannerDashboardPlannerViewController> {

  FoodPlannerDashboardPlannerView({Key? key, required InstanceBuilderCallback<FoodPlannerDashboardPlannerViewController> builder}) : super(key: key, builder: builder);

  @override
  List<Widget> buildView(FoodPlannerDashboardPlannerViewController controller,
      DeviceScreenType screenType, BuildContext context) {
    return [
      Text('This is Planner view')
    ];
  }
}

class FoodPlannerDashboardPlannerViewController extends SimpleController {

  @override
  Future<void> initController() async {

  }
}
