enum DeviceType { mobile, tablet, desktop }

class ScreenUtils {
  static const double mobileMaxSize = 767;
  static const double tabletMaxSize = 1023;
  static const double desktopMinSize = 1024;

  static DeviceType getDeviceType(double width) {
    if (width < ScreenUtils.mobileMaxSize) {
      return DeviceType.mobile;
    } else if (width >= ScreenUtils.mobileMaxSize &&
        width < ScreenUtils.tabletMaxSize) {
      return DeviceType.tablet;
    }

    return DeviceType.desktop;
  }
}
