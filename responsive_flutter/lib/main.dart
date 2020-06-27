import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'widgets/responsive/common/home_responsive_widget.dart';

void main() => runApp(
      DevicePreview(
        child: MyApp(),
      ),
    );

// void main() => runApp(
//   MyApp(),
// );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      title: 'Responsive',
      home: HomeResponsiveWidget(),
    );
  }
}
