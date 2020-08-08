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
            decoration: BoxDecoration(
              color: backgroundColor,
              boxShadow: [
                BoxShadow(blurRadius: 4, color: foregroundColor),
              ],
            ),
            child: Container(
                child: Row(children: <Widget>[
              FlatButton.icon(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.home, size: 45),
                  label: Text('Home',
                      style: TextStyle(fontSize: 20, color: foregroundColor)))
            ]))));
  }
}
