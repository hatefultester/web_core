import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import '../../../../../../core/enums/device_screen_type.dart';
import '../../../shared/views/food_planner_view.dart';
import 'food_planner_dashboard_about_view_controller.dart';

class FoodPlannerDashboardAboutView
    extends FoodPlannerViewTemplate<FoodPlannerDashboardAboutViewController> {

  const FoodPlannerDashboardAboutView({Key? key}) : super(key: key);

  @override
  List<Widget> buildView(FoodPlannerDashboardAboutViewController controller,
      DeviceScreenType screenType, BuildContext context) {
    return [
      Text('This is About view')
    ];
  }

  @override
  FoodPlannerDashboardAboutViewController builder() => FoodPlannerDashboardAboutViewController();
}
