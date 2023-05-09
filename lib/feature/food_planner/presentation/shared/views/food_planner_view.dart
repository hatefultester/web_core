import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/abstractions/simple_controller.dart';
import '../../../../../core/abstractions/simple_view.dart';
import '../../../../../core/enums/device_screen_type.dart';
import '../../../../../core/presentation/wrappers/custom_opacity_animation_wrapper.dart';

abstract class FoodPlannerViewTemplate<T extends SimpleController>
    extends SimpleView<T> {
  final bool scrollable;

  final bool centered;

  final bool withOpacityEffect;

  const FoodPlannerViewTemplate({
    Key? key,
    this.scrollable = false,
    this.centered = false,
    this.withOpacityEffect = false,
  }) : super(key: key);

  @override
  Widget buildDesktopView(T controller, BuildContext context) {
    return buildResponsiveContent(
        controller: controller,
        screenType: DeviceScreenType.desktop,
        buildView: buildView,
        context: context);
  }

  @override
  Widget buildMobileView(T controller, BuildContext context) {
    return buildResponsiveContent(
        controller: controller,
        screenType: DeviceScreenType.mobile,
        buildView: buildView,
        context: context);
  }

  @override
  Widget buildTabletView(T controller, BuildContext context) {
    return buildResponsiveContent(
        controller: controller,
        screenType: DeviceScreenType.tablet,
        buildView: buildView,
        context: context);
  }

  List<Widget> buildView(
      T controller, DeviceScreenType screenType, BuildContext context);

  EdgeInsets getPaddingForScreenType(DeviceScreenType screenType) {
    switch (screenType) {
      case DeviceScreenType.mobile:
        return const EdgeInsets.all(10);
      case DeviceScreenType.tablet:
        return const EdgeInsets.all(25);
      case DeviceScreenType.desktop:
        return const EdgeInsets.all(50);
      default:
        return EdgeInsets.zero;
    }
  }

  Widget buildResponsiveContent({
    required DeviceScreenType screenType,
    required List<Widget> Function(
        T controller, DeviceScreenType screenType, BuildContext context)
    buildView,
    required BuildContext context,
    required T controller,
  }) {
    Widget content = Padding(
      padding: getPaddingForScreenType(screenType),
      child: Column(
        children: buildView(controller, screenType, context),
      ),
    );

    if (scrollable) {
      content = SingleChildScrollView(child: content);
    } else {
      content = SizedBox.expand(child: content);
    }

    if (withOpacityEffect) {
      content = CustomOpacityAnimationWrapper(child: content);
    }

    if (centered) {
      return Center(child: content);
    } else {
      return content;
    }
  }
}
