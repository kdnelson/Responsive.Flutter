import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/widgets/base_drawer_options_widget.dart';

class DrawerOptionsHelper {
  static List<Widget> getDrawerOptions() {
    return [
      BaseDrawerOptionsWidget(
        title: 'Images',
        iconData: Icons.image,
      ),
      BaseDrawerOptionsWidget(
        title: 'Reports',
        iconData: Icons.photo_filter,
      ),
      BaseDrawerOptionsWidget(
        title: 'Incidents',
        iconData: Icons.message,
      ),
      BaseDrawerOptionsWidget(
        title: 'Settings',
        iconData: Icons.settings,
      ),
    ];
  }
}