import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import '../../../../core/abstractions/base_controller.dart';
import '../../../../core/abstractions/base_page.dart';
import 'views/kh_error_view.dart';
import 'views/kh_loading_view.dart';

abstract class KhNavigationTemplate<T extends BaseController, V extends Enum> extends BasePage<T, V> {

  final String title;

  const KhNavigationTemplate({Key? key, required this.title,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildBasePage(context);
  }

  Widget buildPageContent(T controller, V viewState, BuildContext context);

  List<NavigationPaneItem> buildMenuItems(T controller, V viewState, BuildContext context);

  List<NavigationPaneItem> buildFooterItems(T controller, V viewState, BuildContext context);

  onMenuItemChangedCallback(T controller, int value);

  getSelectedIndex(V viewState);

  @override
  Widget buildSuccessView(T controller, V viewState, BuildContext context) {
    return NavigationView(
      appBar: NavigationAppBar(
        title: Text(title),
          automaticallyImplyLeading: false,
      ),
      pane: NavigationPane(
        selected: getSelectedIndex(viewState),
        onChanged: (int value) { onMenuItemChangedCallback(controller, value); },
        items: buildMenuItems(controller, viewState, context),
        footerItems: buildFooterItems(controller, viewState, context),
      ),
    );
  }

  @override
  Widget buildBasicView(T controller, BuildContext context) {
    return const KhLoadingView(info: 'Page is preparing');
  }

  @override
  Widget buildErrorView(T controller, BuildContext context) {
    return const KhErrorView(info: 'Page failed to load');
  }

  @override
  Widget buildLoadingView(T controller, BuildContext context) {
    return const KhLoadingView(info: 'Page is loading');
  }
}