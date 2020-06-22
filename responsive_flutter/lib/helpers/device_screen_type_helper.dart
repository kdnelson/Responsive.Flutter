import 'package:flutter/widgets.dart';
import 'package:responsive_flutter/enums/device_type_enum.dart';

class DeviceTypeHelper {
  DeviceTypeEnum getDeviceType(MediaQueryData mediaQuery) {
    double deviceWidth = mediaQuery.size.shortestSide;

    if (deviceWidth > 950) {
      return DeviceTypeEnum.Desktop;
    }

    if (deviceWidth > 600) {
      return DeviceTypeEnum.Tablet;
    }

    return DeviceTypeEnum.Mobile;
  }
}