import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileDrawerLandscapeWidget extends StatelessWidget {

  const MobileDrawerLandscapeWidget(
  {
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 16,
              color: Colors.black12,
            )
          ],
        ),
      );
  }
}