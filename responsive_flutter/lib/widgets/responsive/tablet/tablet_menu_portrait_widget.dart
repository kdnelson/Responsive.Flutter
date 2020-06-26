import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/widgets/responsive/common/drawer_widget.dart';

class TabletMenuPortraitWidget extends StatelessWidget {

  const TabletMenuPortraitWidget(
  {
    Key key
  }) : super(key: key);

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text("Portrait: Widget that all Menu's call"),
            ),
          ),
          DrawerWidget(),
        ],
      ),
    );
  }
}