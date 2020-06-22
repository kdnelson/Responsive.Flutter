import 'package:flutter/cupertino.dart';
import 'package:responsive_flutter/enums/device_screen_type_enum.dart';

class SizingInformationHelper {
  final Orientation orientation;
  final DeviceScreenTypeEnum deviceType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformationHelper({
    this.orientation,
    this.deviceType,
    this.screenSize,
    this.localWidgetSize,
  });

  @override
  String toString() {
    return 'Orientation:$orientation DeviceType:$deviceType ScreenSize:$screenSize LocalWidgetSize:$localWidgetSize';
  }
}