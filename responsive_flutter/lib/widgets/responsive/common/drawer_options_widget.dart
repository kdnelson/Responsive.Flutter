import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:responsive_flutter/models/drawer_item_model.dart';
import 'package:responsive_flutter/widgets/responsive/mobile/drawer/mobile_drawer_landscape_options_widget.dart';
import 'package:responsive_flutter/widgets/responsive/mobile/drawer/mobile_drawer_portrait_options_widget.dart';
import 'package:responsive_flutter/widgets/responsive/tablet/drawer/tablet_drawer_landscape_options_widget.dart';
import 'package:responsive_flutter/widgets/responsive/tablet/drawer/tablet_drawer_portrait_options_widget.dart';

import 'device_type_widget.dart';
import 'orientation_widget.dart';

class DrawerOptionsWidget extends StatelessWidget {
  final String title;
  final IconData iconData;

  const DrawerOptionsWidget({
    Key key,
    this.title,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: DrawerItemModel(title: title, iconData: iconData),
      child: DeviceTypeWidget(
        mobile: OrientationWidget(
            portrait: (context) => MobileDrawerPortraitOptionsWidget(),
            landscape: (context) => MobileDrawerLandscapeOptionsWidget()),
        tablet: OrientationWidget(
            portrait: (context) => TabletDrawerPortraitOptionsWidget(),
            landscape: (context) => TabletDrawerLandscapeOptionsWidget()),
      ),
    );
  }
}
