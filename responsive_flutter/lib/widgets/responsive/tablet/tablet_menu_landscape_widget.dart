import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/widgets/responsive/common/drawer_widget.dart';

class TabletMenuLandscapeWidget extends StatelessWidget {

  const TabletMenuLandscapeWidget(
  {
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var children = [
      Expanded(
        child: Container(),
      ),
      DrawerWidget()
    ];
    
    return Scaffold(
      body: Row(children: children.reversed.toList())
    );
  }
}