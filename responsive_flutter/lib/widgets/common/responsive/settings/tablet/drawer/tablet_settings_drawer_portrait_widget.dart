import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/services/navigator_service.dart';
import 'package:responsive_flutter/utilities/locator.dart';
import 'package:responsive_flutter/widgets/common/responsive/common/settings_responsive_widget.dart';

class TabletSettingsDrawerPortraitWidget extends StatelessWidget {
  const TabletSettingsDrawerPortraitWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 16, color: Colors.black12),
          ],
        ),
        child: Container(
            child: Row(children: <Widget>[
          FlatButton.icon(
              onPressed: () {
                locator<NavigatorService>().navigateToPage(MaterialPageRoute(
                    builder: (context) => SettingsResponsiveWidget()));
              },
              icon: Icon(Icons.settings, size: 45),
              label: Text('Settings', style: TextStyle(fontSize: 20)))
        ])));
  }
}
