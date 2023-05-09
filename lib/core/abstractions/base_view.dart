import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../enums/device_screen_type.dart';
import 'base_controller.dart';

abstract class BaseView<T extends BaseController> extends GetView<T> {

  const BaseView(
      {Key? key,})
      : super(key: key);

  Widget buildMobileView(T controller,
      BuildContext context,);

  Widget buildTabletView(T controller,
      BuildContext context,);

  Widget buildDesktopView(T controller,
      BuildContext context,);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        DeviceScreenType screenType = getDeviceScreenType(constraints);

        controller.setDeviceScreenType(screenType);


        switch (screenType) {
          case DeviceScreenType.mobile:
            Widget mobileView = buildMobileView(controller, context);
            return mobileView;
          case DeviceScreenType.tablet:
            Widget tabletView = buildTabletView(controller, context);
            return tabletView;
          case DeviceScreenType.desktop:
            Widget desktopView = buildDesktopView(controller, context);
            return desktopView;
        }
      },
    );
  }
}


DeviceScreenType getDeviceScreenType(BoxConstraints constraints) {
  if (constraints.maxWidth < 500) {
    return DeviceScreenType.mobile;
  } else if (constraints.maxWidth < 1200) {
    return DeviceScreenType.tablet;
  } else {
    return DeviceScreenType.desktop;
  }
}