import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/services/navigator_service.dart';
import 'package:responsive_flutter/utilities/locator.dart';
import 'package:responsive_flutter/widgets/responsive/common/home_responsive_widget.dart';

class TabletDrawerLandscapeWidget extends StatelessWidget {
  const TabletDrawerLandscapeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(blurRadius: 16, color: Colors.black12),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.file_download, size: 35),
                title: Text('Reports', style: TextStyle(fontSize: 21)),
                dense: false,
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                  locator<NavigatorService>().navigateToPage(MaterialPageRoute(
                      builder: (context) => HomeResponsiveWidget()));
                },
              ),
              ListTile(
                leading: Icon(Icons.settings, size: 35),
                title: Text('Settings', style: TextStyle(fontSize: 21)),
                dense: false,
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                  locator<NavigatorService>().navigateToPage(MaterialPageRoute(
                      builder: (context) => HomeResponsiveWidget()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
