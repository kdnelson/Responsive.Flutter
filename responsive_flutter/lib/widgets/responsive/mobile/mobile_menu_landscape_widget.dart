import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/widgets/home/mobile/mobile_home_landscape_widget.dart';
import 'package:responsive_flutter/widgets/responsive/common/drawer_widget.dart';

class MobileMenuLandscapeWidget extends StatelessWidget {

  const MobileMenuLandscapeWidget(
  {
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          DrawerWidget(),
          Expanded(
            child: MobileHomeLandscapeWidget(),
          ),
        ],
      ),
    );
  }
}