import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../enums/sync_state.dart';
import 'base_controller.dart';

abstract class BasePage<T extends BaseController, V> extends StatelessWidget {
  const BasePage({
    Key? key,
  }) : super(key: key);

  T createController();

  Widget buildSuccessView(T controller, V viewState, BuildContext context);

  Widget buildErrorView(T controller, BuildContext context);

  Widget buildLoadingView(T controller, BuildContext context);

  Widget buildBasicView(T controller, BuildContext context);

  @override
  Widget build(BuildContext context);

  Widget buildBasePage(BuildContext context) {
    return GetBuilder<T>(
      init: createController(),
      builder: (controller) {
        return Obx(
              () {
            switch (controller.syncState.value) {
              case SyncState.basic:
                final basicView = buildBasicView(controller, context);
                return basicView;
              case SyncState.loading:
                final loadingView = buildLoadingView(controller, context);
                return loadingView;
              case SyncState.done:
                final viewState = controller.viewState.value as V;
                final successView = buildSuccessView(controller, viewState, context);
                return successView;
              case SyncState.error:
                final errorView = buildErrorView(controller, context);
                return errorView;
            }
          },
        );
      },
    );
  }
}
