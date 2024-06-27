import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DeviceType {
  static double mobileBreakpoint = 740.0;
  static double tabletBreakpoint = 1280.0;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < mobileBreakpoint;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= mobileBreakpoint &&
      MediaQuery.of(context).size.width <= tabletBreakpoint;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > tabletBreakpoint;

  static bool isWeb(BuildContext context) => kIsWeb;
}

class ScreenSize {
  // Private constructor to prevent instantiation
  ScreenSize._();

  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
