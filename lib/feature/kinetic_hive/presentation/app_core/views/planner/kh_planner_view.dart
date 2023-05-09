import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import '../../../../../../core/presentation/wrappers/row_or_column.dart';
import '../../../../../../core/enums/device_screen_type.dart';
import '../../../shared/views/kh_view.dart';
import 'kh_planner_view_controller.dart';

class KhPlannerView
    extends KhViewTemplate<KhPlannerViewController> {

  const KhPlannerView(
      {Key? key})
      : super(key: key);

  @override
  List<Widget> buildView(KhPlannerViewController controller,
      DeviceScreenType screenType, BuildContext context) {
    return [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextBox(
          placeholder:
              'Please provide your lifestyle in terms of activity, age, etc...',
          controller: controller.userLifestyleHabitsTextField,
          minLines: 5,
          maxLines: 10,
        ),
      ),
      RowOrColumn(
        condition: !screenType.isMobile(),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextBox(
              placeholder:
                  'Briefly describe your eating habits, how many times you eat, what you like, etc...',
              controller: controller.userEatingHabitsTextField,
              minLines: 5,
              maxLines: 10,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextBox(
              placeholder:
                  'Please provide food you dont eat, your alergies and other restrictions',
              controller: controller.userRestrictionsTextField,
              minLines: 5,
              maxLines: 10,
            ),
          ),
        ],
      ),
      HyperlinkButton(child: Text('Generate'), onPressed: () {
        controller.handleMealPlanGeneratedButtonTapped();
      })
    ];
  }

  @override
  KhPlannerViewController builder() => KhPlannerViewController();
}
