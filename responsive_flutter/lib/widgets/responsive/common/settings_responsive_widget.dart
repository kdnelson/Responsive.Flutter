import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/settings_viewmodel.dart';
import 'package:responsive_flutter/widgets/home/base_widget.dart';
import 'package:responsive_flutter/widgets/responsive/mobile/mobile_menu_settings_landscape_widget.dart';
import 'package:responsive_flutter/widgets/responsive/mobile/mobile_menu_settings_portrait_widget.dart';
import 'package:responsive_flutter/widgets/responsive/tablet/tablet_menu_settings_landscape_widget.dart';
import 'package:responsive_flutter/widgets/responsive/tablet/tablet_menu_settings_portrait_widget.dart';

import 'device_type_widget.dart';
import 'orientation_widget.dart';

class SettingsResponsiveWidget extends StatelessWidget {
  const SettingsResponsiveWidget({Key key, bool isInitializing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget<SettingsViewModel>(
        viewModel: SettingsViewModel(),
        onModelReady: (model) => model.initialize(),
        builder: (context) => DeviceTypeWidget(
              mobile: OrientationWidget(
                portrait: (context) => MobileMenuSettingsPortraitWidget(),
                landscape: (context) => MobileMenuSettingsLandscapeWidget(),
              ),
              tablet: OrientationWidget(
                portrait: (context) => TabletMenuSettingsPortraitWidget(),
                landscape: (context) => TabletMenuSettingsLandscapeWidget(),
              ),
            ));
  }
}
