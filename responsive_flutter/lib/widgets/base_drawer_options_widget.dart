import 'package:flutter/cupertino.dart';

import 'device_type_widget.dart';
import 'mobile_drawer_landscape_options.dart';
import 'mobile_drawer_portrait_options.dart';
import 'orientation_widget.dart';
import 'tablet_drawer_landscape_options.dart';
import 'tablet_drawer_portrait_options.dart';

class BaseDrawerOptionsWidget extends StatelessWidget {
  final String title;
  final IconData iconData;

  const BaseDrawerOptionsWidget({
    Key key,
    this.title,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DeviceTypeWidget(
      mobile: OrientationWidget(
        portrait: MobileDrawerPortraitOptions(
          title: title,
          iconData: iconData,
        ),
        landscape: MobileDrawerLandscapeOptions(
          iconData: iconData,
        ),
      ),
      tablet: OrientationWidget(
        portrait: TabletDrawerPortraitOptions(
          title: title,
          iconData: iconData,
        ),
        landscape: TabletDrawerLandscapeOptions(
          title: title,
          iconData: iconData,
        ),
      ),
    );
  }
}