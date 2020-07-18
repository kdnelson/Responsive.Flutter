import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/enums/view_state_enum.dart';
import 'package:responsive_flutter/utilities/styles.dart';
import 'package:responsive_flutter/viewmodel/login_viewmodel.dart';
import 'package:responsive_flutter/widgets/dialogs/common/exit_app_dialog.dart';
import 'package:responsive_flutter/widgets/home/mobile/common/home_posts_per_user_widget.dart';
import 'package:stacked/stacked.dart';

class MobileHomeLandscapeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.nonReactive(
        viewModelBuilder: () => LoginViewModel(),
        disposeViewModel: true,
        onModelReady: (model) => model.initialize(),
        builder: (context, model, child) => ExitAppDialog(
              context,
              child: Container(
                color: backgroundColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    model.state == ViewState.Busy
                        ? Padding(
                            padding: const EdgeInsets.only(top: 100.0),
                            child: CircularProgressIndicator(
                              valueColor: new AlwaysStoppedAnimation<Color>(
                                  foregroundColor),
                            ),
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                                SizedBox(height: 5),
                                MediaQuery.removePadding(
                                    context: context,
                                    removeTop: true,
                                    child: SizedBox(
                                      height: 320,
                                      child: HomePostsPerUserWidget(),
                                    ))
                              ]),
                  ],
                ),
              ),
            ));
  }
}
