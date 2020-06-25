import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'device_type_widget.dart';
import 'home_tablet_widget.dart';
import 'mobile_landscape_widget.dart';
import 'mobile_portrait_widget.dart';
import 'orientation_layout_widget.dart';

class HomeWidget extends StatelessWidget {

  const HomeWidget(
  {
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DeviceTypeWidget(
      mobile: OrientationLayoutWidget(
        portrait: MobilePortraitWidget(),
        landscape: const MobileLandscapeWidget(),
      ),
      tablet: const HomeTabletWidget(),
    );
  }
}