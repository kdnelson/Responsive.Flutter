import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_drawer_mobile_widget.dart';
import 'app_drawer_tablet_landscape_widget.dart';
import 'app_drawer_tablet_portrait_widget.dart';
import 'device_type_widget.dart';
import 'orientation_layout_widget.dart';

class BaseDrawerWidget extends StatelessWidget {

  const BaseDrawerWidget(
  {
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DeviceTypeWidget(
      mobile: const AppDrawerMobileWidget(),
      tablet: const OrientationLayoutWidget(
        portrait: const AppDrawerTabletPortraitWidget(),
        landscape: const AppDrawerTabletLandscapeWidget(),
      ),
    );
  }
}