import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/services/navigator_service.dart';
import 'package:responsive_flutter/utilities/locator.dart';
import 'package:responsive_flutter/widgets/responsive/common/settings_responsive_widget.dart';

class MobileHomeDrawerPortraitWidget extends StatelessWidget {
  const MobileHomeDrawerPortraitWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 16,
              color: Colors.black,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Container(
              child: Column(children: <Widget>[
            FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.file_download, size: 45),
                label: Text('Reports', style: TextStyle(fontSize: 20))),
            FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).pop();
                  locator<NavigatorService>().navigateToPage(MaterialPageRoute(
                      builder: (context) => SettingsResponsiveWidget()));
                },
                icon: Icon(Icons.settings, size: 45),
                label: Text('Settings', style: TextStyle(fontSize: 20)))
          ])),
        ));
  }
}
