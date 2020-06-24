import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawerMobileWidget extends StatelessWidget {

  const AppDrawerMobileWidget(
  {
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Container(
        width: orientation == Orientation.portrait ? 250 : 150,
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