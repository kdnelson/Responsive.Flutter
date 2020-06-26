import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/widgets/responsive/common/drawer_widget.dart';

class MobileMenuPortraitWidget extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerWidget(),
      body: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 40.0, bottom: 15.0, left: 15.0, right: 15.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                size: 30,
              ),
              onPressed: () {
                _scaffoldKey.currentState.openDrawer();
              },
            ),
          ),
          Expanded(
            child: Container(
              child: Text("Portrait: Widget that all Menu's call"),
            ),
          ),
        ],
      ),
    );
  }
}