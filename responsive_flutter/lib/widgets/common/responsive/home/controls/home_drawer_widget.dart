import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/widgets/common/responsive/home/mobile/drawer/mobile_home_drawer_landscape_widget.dart';
import 'package:responsive_flutter/widgets/common/responsive/home/mobile/drawer/mobile_home_drawer_portrait_widget.dart';
import 'package:responsive_flutter/widgets/common/responsive/home/tablet/drawer/tablet_home_drawer_landscape_widget.dart';
import 'package:responsive_flutter/widgets/common/responsive/home/tablet/drawer/tablet_home_drawer_portrait_widget.dart';
import '../../common/device_type_widget.dart';
import '../../common/orientation_widget.dart';

class HomeDrawerWidget extends StatelessWidget {
  const HomeDrawerWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DeviceTypeWidget(
      mobile: OrientationWidget(
        portrait: (context) => MobileHomeDrawerPortraitWidget(),
        landscape: (context) => MobileHomeDrawerLandscapeWidget(),
      ),
      tablet: OrientationWidget(
        portrait: (context) => TabletHomeDrawerPortraitWidget(),
        landscape: (context) => TabletHomeDrawerLandscapeWidget(),
      ),
    );
  }
}
