import 'package:flutter/cupertino.dart';
import 'package:responsive_flutter/widgets/responsive/mobile/mobile_drawer_landscape_options.dart';
import 'package:responsive_flutter/widgets/responsive/mobile/mobile_drawer_portrait_options.dart';
import 'package:responsive_flutter/widgets/responsive/tablet/tablet_drawer_landscape_options.dart';
import 'package:responsive_flutter/widgets/responsive/tablet/tablet_drawer_portrait_options.dart';

import 'device_type_widget.dart';
import 'orientation_widget.dart';

class DrawerOptionsWidget extends StatelessWidget {
  final String title;
  final IconData iconData;

  const DrawerOptionsWidget({
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