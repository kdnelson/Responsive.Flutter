import 'package:flutter/cupertino.dart';
import 'package:responsive_flutter/helpers/device_screen_type_helper.dart';
import 'package:responsive_flutter/helpers/sizing_info_helper.dart';

class BaseWidget extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformationHelper sizingInfo) builder;

  const BaseWidget(
  {
    Key key, 
    this.builder
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  var mediaQuery = MediaQuery.of(context);

  return LayoutBuilder(builder: (context, boxSizing) {
    var sizingInfo = SizingInformationHelper(
      orientation: mediaQuery.orientation,
      deviceScreenType: DeviceTypeHelper().getDeviceType(mediaQuery),
      screenSize: mediaQuery.size,
      localWidgetSize: Size(boxSizing.maxWidth, boxSizing.maxHeight),
    );

    return builder(context, sizingInfo);
  });
}
}