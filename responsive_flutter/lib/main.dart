import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/utilities/locator.dart';

import 'package:responsive_flutter/widgets/responsive/common/home_responsive_widget.dart';

import 'services/navigator_service.dart';
import 'widgets/login/login_widget.dart';

// void main() async {
//   await LocatorInjector.setupLocator();
//   runApp(
//     DevicePreview(
//       child: MainApplication(),
//     ),
//   );
// }

void main() async {
  await LocatorInjector.setupLocator();
  runApp(MainApplication());
}

class MainApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      title: 'Responsive',
      navigatorKey: locator<NavigatorService>().navigatorKey,
      onGenerateRoute: (routeSettings) {
        switch (routeSettings.name) {
          case 'home':
            return MaterialPageRoute(
                builder: (context) => HomeResponsiveWidget());
          case 'login':
            return MaterialPageRoute(builder: (context) => LoginWidget());
          default:
            return MaterialPageRoute(builder: (context) => LoginWidget());
        }
      },
    );
  }
}
