import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/utilities/styles.dart';

class TabletSettingsDrawerPortraitWidget extends StatelessWidget {
  const TabletSettingsDrawerPortraitWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            height: 100.0,
            alignment: Alignment.centerLeft,
            color: menuBackgroundColor,
            child: Container(
                child: Row(children: <Widget>[
              FlatButton.icon(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.home, size: 45, color: backGroundColor),
                  label: Text('Home',
                      style: TextStyle(fontSize: 20, color: backGroundColor)))
            ]))));
  }
}
