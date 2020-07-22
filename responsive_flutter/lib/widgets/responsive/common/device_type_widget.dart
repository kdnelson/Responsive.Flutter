import 'package:flutter/cupertino.dart';
import 'package:responsive_flutter/enums/device_type_enum.dart';
import 'package:responsive_flutter/widgets/responsive/common/responsive_builder_widget.dart';

class DeviceTypeWidget extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const DeviceTypeWidget(
      {Key key, @required this.mobile, this.tablet, this.desktop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilderWidget(builder: (context, sizingInformation) {
      if (sizingInformation.deviceScreenType == DeviceTypeEnum.Tablet) {
        if (tablet != null) {
          return tablet;
        }
      }

      if (sizingInformation.deviceScreenType == DeviceTypeEnum.Desktop) {
        if (desktop != null) {
          return desktop;
        }
      }

      return mobile;
    });
  }
}
