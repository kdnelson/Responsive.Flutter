import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/utilities/styles.dart';

class MobileSettingsDrawerPortraitWidget extends StatelessWidget {
  const MobileSettingsDrawerPortraitWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 160,
        decoration: BoxDecoration(
          color: menuBackgroundColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: foreGroundColor,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(children: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.home, size: 45, color: backGroundColor),
                label: Text('Home',
                    style: TextStyle(fontSize: 20, color: backGroundColor))),
          ]),
        ));
  }
}
