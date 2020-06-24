import 'package:flutter/cupertino.dart';

class OrientationLayoutWidget extends StatelessWidget {
  final Widget landscape;
  final Widget portrait;
  
  const OrientationLayoutWidget({
    Key key,
    this.landscape,
    @required this.portrait,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.landscape) {
      return landscape ?? portrait;
    }

    return portrait;
  }
}