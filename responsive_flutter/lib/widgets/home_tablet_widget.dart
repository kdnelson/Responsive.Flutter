import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_drawer_widget.dart';

class HomeTabletWidget extends StatelessWidget {

  const HomeTabletWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;

    var children = [
      Expanded(
        child: Container(),
      ),
      AppDrawerWidget()
    ];
    
    return Scaffold(
      body: orientation == Orientation.portrait
          ? Column(
              children: children,
            )
          : Row(
              children: children.reversed.toList(),
            ),
    );
  }
}