import 'package:fluent_ui/fluent_ui.dart';
import '../../../../core/abstractions/base_controller.dart';
import '../../../../core/abstractions/base_page.dart';
import 'views/food_planner_error_view.dart';
import 'views/food_planner_loading_view.dart';

abstract class FoodPlannerPageBaseTemplate<T extends BaseController, V extends Enum> extends BasePage<T, V> {

  final String title;

  const FoodPlannerPageBaseTemplate({Key? key, required this.title,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: NavigationAppBar(
        title: Text(title),
        automaticallyImplyLeading: false,
      ),
      content: buildBasePage(context),
    );
  }

  Widget buildPageContent(T controller, V viewState, BuildContext context);

  @override
  Widget buildSuccessView(T controller, V viewState, BuildContext context) {
    return buildPageContent(controller, viewState, context);
  }

  @override
  Widget buildBasicView(T controller, BuildContext context) {
    return const FoodPlannerLoadingView(info: 'Page is preparing');
  }

  @override
  Widget buildErrorView(T controller, BuildContext context) {
    return const FoodPlannerErrorView(info: 'Page failed to load');
  }

  @override
  Widget buildLoadingView(T controller, BuildContext context) {
    return const FoodPlannerLoadingView(info: 'Page is loading');
  }
}