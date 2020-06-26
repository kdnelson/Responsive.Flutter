import 'package:flutter/cupertino.dart';

class TabletHomePortraitWidget extends StatelessWidget {

  const TabletHomePortraitWidget(
  {
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Portrait: Widget that all Menu's call"),
    );
  }
}