import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/services/navigator_service.dart';
import 'package:responsive_flutter/utilities/locator.dart';
import 'package:responsive_flutter/utilities/styles.dart';
import 'package:responsive_flutter/widgets/responsive/settings/controls/settings_responsive_widget.dart';

class MobileHomeDrawerPortraitWidget extends StatelessWidget {
  const MobileHomeDrawerPortraitWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 160,
        alignment: Alignment.bottomCenter,
        color: backgroundColor,
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(children: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).pop();
                  locator<NavigatorService>().navigateToPage(MaterialPageRoute(
                      builder: (context) => SettingsResponsiveWidget()));
                },
                icon: Icon(Icons.settings, size: 45),
                label: Text('Settings',
                    style: TextStyle(fontSize: 20, color: foregroundColor)))
          ]),
        ));
  }
}
