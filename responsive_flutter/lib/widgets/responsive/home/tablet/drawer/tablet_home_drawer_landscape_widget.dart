import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/services/navigator_service.dart';
import 'package:responsive_flutter/utilities/locator.dart';
import 'package:responsive_flutter/utilities/styles.dart';
import 'package:responsive_flutter/widgets/responsive/settings/controls/settings_responsive_widget.dart';

class TabletHomeDrawerLandscapeWidget extends StatelessWidget {
  const TabletHomeDrawerLandscapeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
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
                padding: const EdgeInsets.only(top: 30.0),
                child: FlatButton.icon(
                    onPressed: () {
                      locator<NavigatorService>().navigateToPage(
                          MaterialPageRoute(
                              builder: (context) =>
                                  SettingsResponsiveWidget()));
                    },
                    icon: Icon(Icons.settings, size: 45),
                    label: Text('Settings',
                        style:
                            TextStyle(fontSize: 20, color: foregroundColor))),
              )
            ]))));
  }
}
