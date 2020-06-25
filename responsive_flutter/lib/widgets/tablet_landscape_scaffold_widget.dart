import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'base_drawer_widget.dart';

class TabletLandscapeScaffoldWidget extends StatelessWidget {

  const TabletLandscapeScaffoldWidget(
  {
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var children = [
      Expanded(
        child: Container(),
      ),
      BaseDrawerWidget()
    ];
    
    return Scaffold(
      body: Row(children: children.reversed.toList())
    );
  }
}