import 'package:flutter/cupertino.dart';

import 'app_drawer_mobile_landscape_options.dart';
import 'app_drawer_mobile_portrait_options.dart';
import 'app_drawer_tablet_portrait_options.dart';
import 'device_type_widget.dart';
import 'orientation_layout_widget.dart';

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
      mobile: OrientationLayoutWidget(
        portrait: AppDrawerMobilePortraitOptions(
          title: title,
          iconData: iconData,
        ),
        landscape: AppDrawerMobileLandscapeOptions(
          iconData: iconData,
        ),
      ),
      tablet: OrientationLayoutWidget(
        portrait: AppDrawerTabletPortraitOptions(
          title: title,
          iconData: iconData,
        ),
        landscape: AppDrawerMobilePortraitOptions(
          title: title,
          iconData: iconData,
        ),
      ),
    );
  }
}