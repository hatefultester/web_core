import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import '../../../../../core/abstractions/simple_controller.dart';
import '../../../../../core/enums/device_screen_type.dart';
import '../../templates/food_planner_view_template.dart';

class FoodPlannerDashboardAboutView
    extends FoodPlannerViewTemplate<FoodPlannerDashboardAboutViewController> {

  FoodPlannerDashboardAboutView({Key? key, required InstanceBuilderCallback<FoodPlannerDashboardAboutViewController> builder}) : super(key: key, builder: builder);

  @override
  List<Widget> buildView(FoodPlannerDashboardAboutViewController controller,
      DeviceScreenType screenType, BuildContext context) {
    return [
      Text('This is About view')
    ];
  }
}

class FoodPlannerDashboardAboutViewController extends SimpleController {

  @override
  Future<void> initController() async {

  }
}
