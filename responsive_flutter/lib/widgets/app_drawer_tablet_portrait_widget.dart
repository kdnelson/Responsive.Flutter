import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawerTabletPortraitWidget extends StatelessWidget {

  const AppDrawerTabletPortraitWidget(
  {
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(blurRadius: 16, color: Colors.black12),
        ],
      ),
    );
  }
}