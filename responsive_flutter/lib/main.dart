import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'widgets/home_widget.dart';
void main() => runApp(
      DevicePreview(
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      home: HomeWidget(),
    );
  }
}