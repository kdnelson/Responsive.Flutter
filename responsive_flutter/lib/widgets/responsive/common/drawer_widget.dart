import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/widgets/responsive/mobile/mobile_drawer_landscape_widget.dart';
import 'package:responsive_flutter/widgets/responsive/mobile/mobile_drawer_portrait_widget.dart';
import 'package:responsive_flutter/widgets/responsive/tablet/tablet_drawer_landscape_widget.dart';
import 'package:responsive_flutter/widgets/responsive/tablet/tablet_drawer_portrait_widget.dart';

import 'device_type_widget.dart';
import 'orientation_widget.dart';

class DrawerWidget extends StatelessWidget {

  const DrawerWidget(
  {
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DeviceTypeWidget(
      mobile: const OrientationWidget(
        portrait: const MobileDrawerPortraitWidget(),
        landscape: const MobileDrawerLandscapeWidget(),
      ),
      tablet: const OrientationWidget(
        portrait: const TabletDrawerPortraitWidget(),
        landscape: const TabletDrawerLandscapeWidget(),
      ),
    );
  }
}