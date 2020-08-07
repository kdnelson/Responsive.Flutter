import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/services/navigator_service.dart';
import 'package:responsive_flutter/utilities/locator.dart';
import 'package:responsive_flutter/utilities/styles.dart';
import 'package:responsive_flutter/widgets/responsive/home/controls/home_responsive_widget.dart';

class TabletSettingsDrawerLandscapeWidget extends StatelessWidget {
  const TabletSettingsDrawerLandscapeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            width: 158.0,
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              color: backgroundColor,
              boxShadow: [
                BoxShadow(blurRadius: 4, color: foregroundColor),
              ],
            ),
            child: Container(
                child: Row(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 33.0),
                child: FlatButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.home, size: 45),
                    label: Text('Home',
                        style:
                            TextStyle(fontSize: 20, color: foregroundColor))),
              )
            ]))));
  }
}
