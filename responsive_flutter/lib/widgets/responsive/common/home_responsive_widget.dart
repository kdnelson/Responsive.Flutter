import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/home/base_widget.dart';
import 'package:responsive_flutter/widgets/responsive/mobile/mobile_menu_landscape_widget.dart';
import 'package:responsive_flutter/widgets/responsive/mobile/mobile_menu_portrait_widget.dart';
import 'package:responsive_flutter/widgets/responsive/tablet/tablet_menu_landscape_widget.dart';
import 'package:responsive_flutter/widgets/responsive/tablet/tablet_menu_portrait_widget.dart';

import 'device_type_widget.dart';
import 'orientation_widget.dart';

class HomeResponsiveWidget extends StatelessWidget {

  const HomeResponsiveWidget(
  {
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeViewModel>(
      viewModel: HomeViewModel(),
      onModelReady: (model) => model.initialise(),
       builder: (context) => DeviceTypeWidget(
        mobile: OrientationWidget(
          portrait: (context) => MobileMenuPortraitWidget(),
          landscape: (context) => MobileMenuLandscapeWidget(),
        ),
        tablet: OrientationWidget(
          portrait: (context) => TabletMenuPortraitWidget(),
          landscape: (context) => TabletMenuLandscapeWidget(),
        ),
      )
    );
  }
}