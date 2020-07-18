import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/widgets/login/login_widget.dart';
import 'package:responsive_flutter/widgets/reactive_trial/reactive_widget.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'home':
        return MaterialPageRoute(builder: (context) => ReactiveView());
      // case 'home':
      //   return MaterialPageRoute(
      //       builder: (context) => HomeResponsiveWidget(-1));
      case 'login':
        return MaterialPageRoute(builder: (context) => LoginWidget());
      default:
        return MaterialPageRoute(builder: (context) => LoginWidget());
    }
  }
}
