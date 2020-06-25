import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'base_drawer_widget.dart';

class MobilePortraitScaffoldWidget extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: BaseDrawerWidget(),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 35.0, bottom: 15.0, left: 15.0, right: 15.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                size: 30,
              ),
              onPressed: () {
                _scaffoldKey.currentState.openDrawer();
              },
            ),
          )
        ],
      ),
    );
  }
}