import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileDrawerMobileWidget extends StatelessWidget {

  const MobileDrawerMobileWidget(
  {
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) => Container(
        width: orientation == Orientation.portrait ? 250 : 100,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 16,
              color: Colors.black12,
            )
          ],
        ),
      ),
    );
  }
}