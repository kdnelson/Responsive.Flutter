import 'package:flutter/cupertino.dart';

class MobileDrawerLandscapeOptions extends StatelessWidget {
  final IconData iconData;

  const MobileDrawerLandscapeOptions(
  {
    Key key, this.iconData
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      alignment: Alignment.center,
      child: Icon(
        iconData, size: 30,
      ),
    );
  }
}