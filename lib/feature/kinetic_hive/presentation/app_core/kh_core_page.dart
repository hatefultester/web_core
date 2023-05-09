import 'package:fluent_ui/fluent_ui.dart';

import '../shared/kh_page_with_menu.dart';
import 'kh_core_controller.dart';
import 'kh_core_state.dart';
import 'views/about/kh_about_view.dart';
import 'views/home/kh_home_view.dart';
import 'views/planner/kh_planner_view.dart';
import 'views/user/kh_user_view.dart';

class KhDashboardPage extends KhNavigationTemplate<
    KhCoreController, KhCoreState> {
  final KhCoreState initState;

  const KhDashboardPage(
      {Key? key,
      required String title,
      this.initState = KhCoreState.home})
      : super(title: title, key: key);

  @override
  KhCoreController createController() =>
      KhCoreController(initState: initState);

  @override
  List<NavigationPaneItem> buildFooterItems(
      KhCoreController controller,
      KhCoreState viewState,
      BuildContext context) {
    List<NavigationPaneItem> items = [];
    for (var item in KhCoreState.values) {
      if (item.isFooterMenuItem()) {
        items.add(
          PaneItem(
            body: buildPageContent(controller, viewState, context),
            title: Text(item.getMenuTitle()),
            icon: item.getMenuIcon(),
          ),
        );
      }
    }

    return items;
  }

  @override
  List<NavigationPaneItem> buildMenuItems(
      KhCoreController controller,
      KhCoreState viewState,
      BuildContext context) {
    List<NavigationPaneItem> items = [];
    for (var item in KhCoreState.values) {
      if (item.isMenuItem()) {
        items.add(
          PaneItem(
            body: buildPageContent(controller, viewState, context),
            title: Text(item.getMenuTitle()),
            icon: item.getMenuIcon(),
          ),
        );
      }
    }

    return items;
  }

  @override
  Widget buildPageContent(KhCoreController controller,
      KhCoreState viewState, BuildContext context) {
    switch (viewState) {
      case KhCoreState.home:
        return const KhHomeView();
      case KhCoreState.planner:
        return const KhPlannerView();
      case KhCoreState.user:
        return const KhUserView();
      case KhCoreState.about:
        return const KhAboutView();
    }
  }

  @override
  getSelectedIndex(KhCoreState viewState) {
    return viewState.getMenuItemIndex();
  }

  @override
  onMenuItemChangedCallback(
      KhCoreController controller, int value) {
    controller.handleMenuItemTapped(value);
  }
}
