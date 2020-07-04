import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileSettingsDrawerLandscapeWidget extends StatelessWidget {
  const MobileSettingsDrawerLandscapeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 90,
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
          padding: const EdgeInsets.only(top: 33.0, left: 9.0),
          child: Container(
              child: Column(children: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.home, size: 45),
                label: Text("")),
            FlatButton.icon(
                onPressed: () {
                  // Navigator.of(context).pop();
                  // locator<NavigatorService>().navigateToPage(MaterialPageRoute(
                  //     builder: (context) => SettingsResponsiveWidget()));
                },
                icon: Icon(Icons.file_download, size: 45),
                label: Text("")),
          ])),
        ));
  }
}
