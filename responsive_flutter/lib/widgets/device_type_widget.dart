import 'package:flutter/cupertino.dart';
import 'package:responsive_flutter/enums/device_type_enum.dart';
import 'package:responsive_flutter/widgets/base_widget.dart';

class DeviceTypeWidget extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const DeviceTypeWidget(
      {Key key, @required this.mobile, this.tablet, this.desktop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizingInformation) {
      // If sizing indicates Tablet and we have a tablet widget then return
      if (sizingInformation.deviceScreenType == DeviceTypeEnum.Tablet) {
        if (tablet != null) {
          return tablet;
        }
      }

      // If sizing indicates desktop and we have a desktop widget then return
      if (sizingInformation.deviceScreenType == DeviceTypeEnum.Desktop) {
        if (desktop != null) {
          return desktop;
        }
      }

      // Return mobile layout if nothing else is supplied
      return mobile;
    });
  }
}