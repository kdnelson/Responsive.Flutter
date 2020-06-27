import 'package:flutter/cupertino.dart';

class TabletHomeLandscapeWidget extends StatelessWidget {
  const TabletHomeLandscapeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Landscape",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          )),
    );
  }
}
