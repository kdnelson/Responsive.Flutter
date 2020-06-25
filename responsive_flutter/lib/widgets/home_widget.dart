import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'device_type_widget.dart';
import 'mobile_landscape_scaffold_widget.dart';
import 'mobile_portrait_scaffold_widget.dart';
import 'orientation_widget.dart';
import 'tablet_landscape_scaffold_widget.dart';
import 'tablet_portrait_scaffold_widget.dart';

class HomeWidget extends StatelessWidget {

  const HomeWidget(
  {
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DeviceTypeWidget(
      mobile: OrientationWidget(
        portrait: MobilePortraitScaffoldWidget(),
        landscape: MobileLandscapeScaffoldWidget(),
      ),
      tablet: OrientationWidget(
        portrait: TabletPortraitScaffoldWidget(),
        landscape: TabletLandscapeScaffoldWidget(),
      ),
    );
  }
}