import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'device_type_widget.dart';
import 'mobile_landscape_scaffold_widget.dart';
import 'mobile_portrait_scaffold_widget.dart';
import 'orientation_widget.dart';
import 'tablet_dynamic_scaffold_widget.dart';

class HomeWidget extends StatelessWidget {

  const HomeWidget(
  {
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DeviceTypeWidget(
      mobile: OrientationWidget(
        // OrientationWidget will call the correct Scaffold needed.
        portrait: MobilePortraitScaffoldWidget(),
        landscape: MobileLandscapeScaffoldWidget(),
      ),
      tablet: TabletDynamicScaffoldWidget(),
    );
  }
}