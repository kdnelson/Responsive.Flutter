import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/enums/view_state_enum.dart';
import 'package:responsive_flutter/utilities/styles.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/common/base_widget.dart';
import 'package:responsive_flutter/widgets/dialogs/common/exit_app_dialog.dart';
import 'package:responsive_flutter/widgets/dialogs/home/home_menu_dialog.dart';
import 'package:responsive_flutter/widgets/home/mobile/common/home_posts_per_user_widget.dart';
import 'package:stacked/stacked.dart';

class MobileHomePortraitWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.nonReactive(
        viewModelBuilder: () => HomeViewModel(),
        disposeViewModel: true,
        builder: (context, model, child) => ExitAppDialog(
              context,
              child: Container(
                color: backgroundColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    model.state == ViewState.Busy
                        ? Padding(
                            padding: const EdgeInsets.only(top: 200.0),
                            child: CircularProgressIndicator(
                              valueColor: new AlwaysStoppedAnimation<Color>(
                                  foregroundColor),
                            ),
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0,
                                      bottom: 5.0,
                                      right: 20.0,
                                      left: 20.0),
                                  child: RaisedButton(
                                    color: foregroundColor,
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          model.isPopupOpen = true;
                                          return BaseWidget<HomeViewModel>(
                                              viewModel: HomeViewModel(),
                                              builder: (context) =>
                                                  HomeMenuDialog());
                                        },
                                      );
                                    },
                                    child: Text(
                                      model.menuLabel,
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          color: backgroundColor),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                MediaQuery.removePadding(
                                    context: context,
                                    removeTop: true,
                                    child: SizedBox(
                                      height: 515,
                                      child: HomePostsPerUserWidget(),
                                    ))
                              ]),
                  ],
                ),
              ),
            ));
  }
}
