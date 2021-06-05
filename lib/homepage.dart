import 'package:flutter/material.dart';
import 'package:quick_website/desktop_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'mobile_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        return DesktopLayoutScreen();
      }
      if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
        return DesktopLayoutScreen();
      }

      if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return DesktopLayoutScreen();
      }

      return DesktopLayoutScreen();
    });
  }
}
