import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/widgets/home/tablet/tablet_home_landscape_widget.dart';
import 'package:responsive_flutter/widgets/responsive/common/drawer_widget.dart';

class TabletMenuLandscapeWidget extends StatelessWidget {

  const TabletMenuLandscapeWidget(
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
            child: TabletHomeLandscapeWidget()
          ),
        ],
      ),
    );
  }
}