import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/helpers/drawer_options_helper.dart';

class TabletDrawerPortraitWidget extends StatelessWidget {

  const TabletDrawerPortraitWidget(
  {
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(blurRadius: 16, color: Colors.black12),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Row(children: DrawerOptionsHelper.getDrawerOptions()),
      ),
    );
  }
}