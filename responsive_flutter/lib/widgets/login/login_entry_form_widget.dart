import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/services/navigator_service.dart';
import 'package:responsive_flutter/utilities/locator.dart';
import 'package:responsive_flutter/viewmodel/login_viewmodel.dart';
import 'package:responsive_flutter/widgets/home/base_model_widget.dart';
import 'package:responsive_flutter/widgets/responsive/common/home_responsive_widget.dart';

class LoginEntryFormWidget extends BaseModelWidget<LoginViewModel> {
  @override
  Widget build(BuildContext context, LoginViewModel model) {
    return Container(
      child: FlatButton(
        color: Colors.white,
        child: Text(model.greeting,
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
