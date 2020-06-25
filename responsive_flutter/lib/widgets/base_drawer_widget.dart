import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_drawer_mobile_widget.dart';
import 'app_drawer_tablet_landscape_widget.dart';
import 'app_drawer_tablet_portrait_widget.dart';
import 'base_drawer_options_widget.dart';
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

  static List<Widget> getDrawerOptions() {
    return [
      BaseDrawerOptionsWidget(
        title: 'Images',
        iconData: Icons.image,
      ),
      BaseDrawerOptionsWidget(
        title: 'Reports',
        iconData: Icons.photo_filter,
      ),
      BaseDrawerOptionsWidget(
        title: 'Incidents',
        iconData: Icons.message,
      ),
      BaseDrawerOptionsWidget(
        title: 'Settings',
        iconData: Icons.settings,
      ),
    ];
  }
}