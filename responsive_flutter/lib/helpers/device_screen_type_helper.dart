import 'package:flutter/widgets.dart';
import 'package:responsive_flutter/enums/device_screen_type_enum.dart';

DeviceScreenTypeEnum getDeviceType(MediaQueryData mediaQuery) {
  var orientation = mediaQuery.orientation;

  double deviceWidth = 0;

  if (orientation == Orientation.landscape) {
    deviceWidth = mediaQuery.size.height;
  } else {
    deviceWidth = mediaQuery.size.width;
  }

  if (deviceWidth > 950) {
    return DeviceScreenTypeEnum.Desktop;
  }

  if (deviceWidth > 600) {
    return DeviceScreenTypeEnum.Tablet;
  }

  return DeviceScreenTypeEnum.Mobile;
}