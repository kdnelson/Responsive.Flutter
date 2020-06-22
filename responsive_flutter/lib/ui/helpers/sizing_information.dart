import 'package:flutter/cupertino.dart';
import 'package:responsive_flutter/enums/device_type_enum.dart';

class SizingInformation {
  final Orientation orientation;
  final DeviceTypeEnum deviceType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation({
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