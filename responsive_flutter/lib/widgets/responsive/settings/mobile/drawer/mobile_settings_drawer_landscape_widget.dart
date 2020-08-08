import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/utilities/styles.dart';

class MobileSettingsDrawerLandscapeWidget extends StatelessWidget {
  const MobileSettingsDrawerLandscapeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 90,
        color: menuBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.only(top: 33.0, left: 9.0),
          child: Column(children: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.home, size: 45, color: backGroundColor),
                label: Text("")),
          ]),
        ));
  }
}
