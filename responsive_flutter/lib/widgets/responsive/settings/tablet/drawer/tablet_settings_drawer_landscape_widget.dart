import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/utilities/styles.dart';

class TabletSettingsDrawerLandscapeWidget extends StatelessWidget {
  const TabletSettingsDrawerLandscapeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            width: 158.0,
            alignment: Alignment.topLeft,
            color: menuBackgroundColor,
            child: Container(
                child: Row(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 33.0),
                child: FlatButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.home, size: 45,color: backGroundColor),
                    label: Text('Home',
                        style:
                            TextStyle(fontSize: 20, color: backGroundColor))),
              )
            ]))));
  }
}
