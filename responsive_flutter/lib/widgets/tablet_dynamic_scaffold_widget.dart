import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'base_drawer_widget.dart';

class TabletDynamicScaffoldWidget extends StatelessWidget {

  const TabletDynamicScaffoldWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;

    var children = [
      Expanded(
        child: Container(),
      ),
      BaseDrawerWidget()
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