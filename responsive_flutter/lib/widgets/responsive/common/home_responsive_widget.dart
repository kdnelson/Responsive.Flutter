import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/home/base_widget.dart';
import 'package:responsive_flutter/widgets/responsive/mobile/mobile_menu_home_landscape_widget.dart';
import 'package:responsive_flutter/widgets/responsive/mobile/mobile_menu_home_portrait_widget.dart';
import 'package:responsive_flutter/widgets/responsive/tablet/tablet_menu_home_landscape_widget.dart';
import 'package:responsive_flutter/widgets/responsive/tablet/tablet_menu_home_portrait_widget.dart';

import 'device_type_widget.dart';
import 'orientation_widget.dart';

class HomeResponsiveWidget extends StatelessWidget {
  const HomeResponsiveWidget({Key key, bool isInitializing}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeViewModel>(
        viewModel: HomeViewModel(),
        onModelReady: (model) => model.initialize(),
        builder: (context) => DeviceTypeWidget(
              mobile: OrientationWidget(
                portrait: (context) => MobileMenuHomePortraitWidget(),
                landscape: (context) => MobileMenuHomeLandscapeWidget(),
              ),
              tablet: OrientationWidget(
                portrait: (context) => TabletMenuHomePortraitWidget(),
                landscape: (context) => TabletMenuHomeLandscapeWidget(),
              ),
            ));
  }
}
