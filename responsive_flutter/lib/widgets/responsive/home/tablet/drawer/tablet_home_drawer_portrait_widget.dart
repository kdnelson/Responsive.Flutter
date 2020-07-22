import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/services/navigator_service.dart';
import 'package:responsive_flutter/utilities/locator.dart';
import 'package:responsive_flutter/utilities/styles.dart';
import 'package:responsive_flutter/widgets/responsive/home/controls/home_responsive_widget.dart';

class TabletHomeDrawerPortraitWidget extends StatelessWidget {
  const TabletHomeDrawerPortraitWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: foregroundColor,
          boxShadow: [
            BoxShadow(blurRadius: 16, color: foregroundColor),
          ],
        ),
        child: Container(
            child: Row(children: <Widget>[
          FlatButton.icon(
              onPressed: () {
                locator<NavigatorService>().navigateToPage(MaterialPageRoute(
                    builder: (context) => HomeResponsiveWidget(-1)));
              },
              icon: Icon(Icons.settings, size: 45),
              label: Text('Settings', style: TextStyle(fontSize: 20)))
        ])));
  }
}
