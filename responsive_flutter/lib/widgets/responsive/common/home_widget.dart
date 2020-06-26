import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/widgets/responsive/mobile/mobile_menu_landscape_widget.dart';
import 'package:responsive_flutter/widgets/responsive/mobile/mobile_menu_portrait_widget.dart';
import 'package:responsive_flutter/widgets/responsive/tablet/tablet_menu_landscape_widget.dart';
import 'package:responsive_flutter/widgets/responsive/tablet/tablet_menu_portrait_widget.dart';

import 'device_type_widget.dart';
import 'orientation_widget.dart';

class HomeWidget extends StatelessWidget {

  const HomeWidget(
  {
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DeviceTypeWidget(
      mobile: OrientationWidget(
        portrait: MobileMenuPortraitWidget(),
        landscape: MobileMenuLandscapeWidget(),
      ),
      tablet: OrientationWidget(
        portrait: TabletMenuPortraitWidget(),
        landscape: TabletMenuLandscapeWidget(),
      ),
    );
  }
}