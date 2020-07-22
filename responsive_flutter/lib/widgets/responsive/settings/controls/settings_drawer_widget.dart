import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/widgets/responsive/settings/mobile/drawer/mobile_settings_drawer_landscape_widget.dart';
import 'package:responsive_flutter/widgets/responsive/settings/mobile/drawer/mobile_settings_drawer_portrait_widget.dart';
import 'package:responsive_flutter/widgets/responsive/settings/tablet/drawer/tablet_settings_drawer_landscape_widget.dart';
import 'package:responsive_flutter/widgets/responsive/settings/tablet/drawer/tablet_settings_drawer_portrait_widget.dart';

import '../../common/device_type_widget.dart';
import '../../common/orientation_widget.dart';

class SettingsDrawerWidget extends StatelessWidget {
  const SettingsDrawerWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DeviceTypeWidget(
      mobile: OrientationWidget(
        portrait: (context) => MobileSettingsDrawerPortraitWidget(),
        landscape: (context) => MobileSettingsDrawerLandscapeWidget(),
      ),
      tablet: OrientationWidget(
        portrait: (context) => TabletSettingsDrawerPortraitWidget(),
        landscape: (context) => TabletSettingsDrawerLandscapeWidget(),
      ),
    );
  }
}
