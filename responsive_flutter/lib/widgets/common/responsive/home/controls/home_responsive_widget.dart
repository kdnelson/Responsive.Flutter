import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/common/responsive/common/device_type_widget.dart';
import 'package:responsive_flutter/widgets/common/responsive/common/orientation_widget.dart';
import 'package:responsive_flutter/widgets/common/responsive/home/mobile/mobile_menu_home_landscape_widget.dart';
import 'package:responsive_flutter/widgets/common/responsive/home/mobile/mobile_menu_home_portrait_widget.dart';
import 'package:responsive_flutter/widgets/common/responsive/home/tablet/tablet_menu_home_landscape_widget.dart';
import 'package:responsive_flutter/widgets/common/responsive/home/tablet/tablet_menu_home_portrait_widget.dart';
import 'package:stacked/stacked.dart';

class HomeResponsiveWidget extends StatelessWidget {
  final int userId;

  const HomeResponsiveWidget(this.userId, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        onModelReady: (model) => model.initialize(userId),
        builder: (context, model, child) => DeviceTypeWidget(
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
