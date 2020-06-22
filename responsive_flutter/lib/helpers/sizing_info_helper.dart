import 'package:flutter/cupertino.dart';
import 'package:responsive_flutter/enums/device_type_enum.dart';

class SizingInformationHelper {
  final Orientation orientation;
  final DeviceTypeEnum deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformationHelper({
    this.orientation,
    this.deviceScreenType,
    this.screenSize,
    this.localWidgetSize,
  });

  @override
  String toString() {
    return 'Orientation:$orientation DeviceType:$deviceScreenType ScreenSize:$screenSize LocalWidgetSize:$localWidgetSize';
  }
}