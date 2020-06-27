import 'package:flutter/cupertino.dart';

class TabletHomePortraitWidget extends StatelessWidget {
  const TabletHomePortraitWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Portrait",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          )),
    );
  }
}
