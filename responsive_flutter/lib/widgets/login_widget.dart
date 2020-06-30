import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/services/navigator_service.dart';
import 'package:responsive_flutter/utilities/locator.dart';

import 'responsive/common/home_responsive_widget.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        color: Colors.white,
        child: Text("Tap",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            )),
        onPressed: () {
          locator<NavigatorService>().navigateToPageWithReplacement(
              MaterialPageRoute(builder: (context) => HomeResponsiveWidget()));
        },
      ),
    );
  }
}
