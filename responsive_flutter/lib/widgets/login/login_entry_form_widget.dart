import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/services/navigator_service.dart';
import 'package:responsive_flutter/utilities/locator.dart';
import 'package:responsive_flutter/utilities/styles.dart';
import 'package:responsive_flutter/viewmodel/login_viewmodel.dart';
import 'package:responsive_flutter/widgets/responsive/common/base_viewmodel_provider_widget.dart';
import 'package:responsive_flutter/widgets/responsive/home/controls/home_responsive_widget.dart';

class LoginEntryFormWidget extends BaseViewModelProviderWidget<LoginViewModel> {
  @override
  Widget build(BuildContext context, LoginViewModel model) {
    return Container(
      color: backGroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // TODO Add login textfield here...
          model.isBusy
              ? Center(
                  child: Container(
                    color: backGroundColor,
                    child: CircularProgressIndicator(
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(foreGroundColor),
                    ),
                  ),
                )
              : FlatButton(
                  color: backGroundColor,
                  child: Text(model.greeting,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          backgroundColor: backGroundColor,
                          color: foreGroundColor)),
                  onPressed: () async {
                    // TODO get textField and pass in userId
                    var userId = await model.login();
                    if (userId > -1) {
                      locator<NavigatorService>().navigateToPageWithReplacement(
                          MaterialPageRoute(
                              builder: (context) =>
                                  HomeResponsiveWidget(userId)));
                    }
                  },
                )
        ],
      ),
    );
  }
}
