import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/enums/view_state_enum.dart';
import 'package:responsive_flutter/services/navigator_service.dart';
import 'package:responsive_flutter/utilities/locator.dart';
import 'package:responsive_flutter/viewmodel/login_viewmodel.dart';
import 'package:responsive_flutter/widgets/common/base_model_widget.dart';
import 'package:responsive_flutter/widgets/common/responsive/common/home_responsive_widget.dart';

class LoginEntryFormWidget extends BaseModelProviderWidget<LoginViewModel> {
  @override
  Widget build(BuildContext context, LoginViewModel model) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          model.state == ViewState.Busy
              ? CircularProgressIndicator(
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),
                )
              : FlatButton(
                  color: Colors.white,
                  child: Text(model.greeting,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          backgroundColor: Colors.white,
                          color: Colors.black)),
                  onPressed: () async {
                    var loginRequest = await model.login();
                    if (loginRequest) {
                      locator<NavigatorService>().navigateToPageWithReplacement(
                          MaterialPageRoute(
                              builder: (context) => HomeResponsiveWidget()));
                    }
                  },
                )
        ],
      ),
    );
  }
}
