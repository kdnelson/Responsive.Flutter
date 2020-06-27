import 'package:flutter/cupertino.dart';

class MobileHomeLandscapeWidget extends StatelessWidget {
  const MobileHomeLandscapeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Lanscape",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          )),
    );
  }
}
