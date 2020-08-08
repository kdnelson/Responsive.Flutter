import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/utilities/styles.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/dialogs/common/exit_app_dialog.dart';
import 'package:responsive_flutter/widgets/dialogs/home/home_menu_dialog.dart';
import 'package:responsive_flutter/widgets/home/common/home_shopping_cart_counter_widget.dart';
import 'package:responsive_flutter/widgets/home/mobile/common/home_posts_per_user_widget.dart';
import 'package:responsive_flutter/widgets/responsive/common/base_viewmodel_provider_widget.dart';

class TabletHomePortraitWidget
    extends BaseViewModelProviderWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return ExitAppDialog(
      context,
      child: Container(
        color: backgroundColor,
        child: Column(
          // TODO Use this for a text entry
          // TextEditingController _controller = TextEditingController();
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            model.isBusy
                ? Padding(
                    padding: const EdgeInsets.only(top: 200.0),
                    child: CircularProgressIndicator(
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(foregroundColor),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Center(
                            child: Text(
                              model.title + " Portrait",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 7.0),
                                child: HomeShoppingCartCounterWidget(),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0,
                                    bottom: 5.0,
                                    right: 20.0,
                                    left: 20.0),
                                child: RaisedButton(
                                  color: foregroundColor,
                                  onPressed: () {
                                    model.setHomePopupState(true);
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return HomeMenuDialog(model);
                                      },
                                    );
                                  },
                                  child: Text(
                                    model.menuLabel,
                                    style: TextStyle(
                                        fontSize: 18.0, color: backgroundColor),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          MediaQuery.removePadding(
                              context: context,
                              removeTop: true,
                              child: SizedBox(
                                height: 770,
                                child: HomePostsPerUserWidget(),
                              ))
                        ]),
                  ),
          ],
        ),
      ),
    );
  }
}
