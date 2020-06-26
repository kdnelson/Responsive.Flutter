import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/widgets/responsive/common/drawer_options_widget.dart';

class DrawerOptionsHelper {
  static List<Widget> getDrawerOptions() {
    return [
      DrawerOptionsWidget(
        title: 'Images',
        iconData: Icons.image,
      ),
      DrawerOptionsWidget(
        title: 'Reports',
        iconData: Icons.photo_filter,
      ),
      DrawerOptionsWidget(
        title: 'Incidents',
        iconData: Icons.message,
      ),
      DrawerOptionsWidget(
        title: 'Settings',
        iconData: Icons.settings,
      ),
    ];
  }
}