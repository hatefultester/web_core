enum DeviceScreenType {
  mobile, tablet, desktop
}

extension DeviceScreenTypeExtension on DeviceScreenType {
  isMobile() => this == DeviceScreenType.mobile;
  isDesktop() => this == DeviceScreenType.desktop;
  isTablet() => this == DeviceScreenType.tablet;

  isGreaterThen(DeviceScreenType type) {
    switch (type) {

      case DeviceScreenType.mobile:
        return this != DeviceScreenType.mobile;
      case DeviceScreenType.tablet:
        return this == DeviceScreenType.desktop;
      case DeviceScreenType.desktop:
        return false;
    }
  }

  isLessThen(DeviceScreenType type) {
    switch (type) {

      case DeviceScreenType.mobile:
        return false;
      case DeviceScreenType.tablet:
        return this == DeviceScreenType.mobile;
      case DeviceScreenType.desktop:
        return this != DeviceScreenType.desktop;
    }
  }
}
