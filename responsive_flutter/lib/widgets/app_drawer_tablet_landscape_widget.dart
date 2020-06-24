import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawerTabletLandscapeWidget extends StatelessWidget {

  const AppDrawerTabletLandscapeWidget(
  {
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(blurRadius: 16, color: Colors.black12),
        ],
      ),
    );
  }
}