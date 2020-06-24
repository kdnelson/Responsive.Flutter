import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'base_drawer_widget.dart';

class MobileLandScapeWidget extends StatelessWidget {

  const MobileLandScapeWidget(
  {
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[BaseDrawerWidget()],
      ),
    );
  }
}