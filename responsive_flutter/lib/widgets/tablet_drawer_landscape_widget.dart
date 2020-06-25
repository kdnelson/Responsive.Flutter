import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/helpers/drawer_options_helper.dart';

class TabletDrawerLandscapeWidget extends StatelessWidget {

  const TabletDrawerLandscapeWidget(
  {
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(blurRadius: 16, color: Colors.black12),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(children: DrawerOptionsHelper.getDrawerOptions()),
      ),
    );
  }
}