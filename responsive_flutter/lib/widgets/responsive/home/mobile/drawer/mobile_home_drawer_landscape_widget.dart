import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/services/navigator_service.dart';
import 'package:responsive_flutter/utilities/locator.dart';
import 'package:responsive_flutter/utilities/styles.dart';
import 'package:responsive_flutter/widgets/responsive/settings/controls/settings_responsive_widget.dart';

class MobileHomeDrawerLandscapeWidget extends StatelessWidget {
  const MobileHomeDrawerLandscapeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 90,
        alignment: Alignment.centerLeft,
        color: menuBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.only(top: 33.0, left: 9.0),
          child: Column(children: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  locator<NavigatorService>().navigateToPage(MaterialPageRoute(
                      builder: (context) => SettingsResponsiveWidget()));
                },
                icon: Icon(Icons.settings, size: 45, color: backGroundColor),
                label: Text("")),
          ]),
        ));
  }
}
