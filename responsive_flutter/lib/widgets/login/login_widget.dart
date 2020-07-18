import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/enums/view_state_enum.dart';
import 'package:responsive_flutter/services/navigator_service.dart';
import 'package:responsive_flutter/utilities/locator.dart';
import 'package:responsive_flutter/utilities/styles.dart';
import 'package:responsive_flutter/viewmodel/login_viewmodel.dart';
import 'package:responsive_flutter/widgets/common/responsive/home/controls/home_responsive_widget.dart';
import 'package:stacked/stacked.dart';

class LoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.nonReactive(
      viewModelBuilder: () => LoginViewModel(),
      disposeViewModel: true,
      onModelReady: (model) => model.initialize(),
      builder: (context, model, child) => Container(
        color: backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // TODO Use this for a text entry
            // TextEditingController _controller = TextEditingController();
            model.state == ViewState.Busy
                ? Center(
                    child: CircularProgressIndicator(
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(foregroundColor),
                    ),
                  )
                : FlatButton(
                    color: backgroundColor,
                    child: Text(model.greeting,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            backgroundColor: backgroundColor,
                            color: foregroundColor)),
                    onPressed: () async {
                      // TODO get textField and pass in userId
                      var userId = await model.login();
                      if (userId > -1) {
                        locator<NavigatorService>()
                            .navigateToPageWithReplacement(MaterialPageRoute(
                                builder: (context) =>
                                    HomeResponsiveWidget(userId)));
                      }
                    },
                  )
          ],
        ),
      ),
    );
  }
}
