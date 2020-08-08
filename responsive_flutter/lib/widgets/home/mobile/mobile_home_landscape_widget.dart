import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/utilities/styles.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/dialogs/common/exit_app_dialog.dart';
import 'package:responsive_flutter/widgets/home/common/home_shopping_cart_counter_widget.dart';
import 'package:responsive_flutter/widgets/home/mobile/common/home_posts_per_user_widget.dart';
import 'package:responsive_flutter/widgets/responsive/common/base_viewmodel_provider_widget.dart';

class MobileHomeLandscapeWidget
    extends BaseViewModelProviderWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    if (model.isPopupOpen == true) {
      model.setHomePopupState(false);
      Navigator.of(context).pop();
    }
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
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Container(
                      color: backgroundColor,
                      child: CircularProgressIndicator(
                        valueColor:
                            new AlwaysStoppedAnimation<Color>(foregroundColor),
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Center(
                            child: Text(
                              model.title + " Landscape",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 17.0),
                            child: HomeShoppingCartCounterWidget(),
                          ),
                          MediaQuery.removePadding(
                              context: context,
                              removeTop: true,
                              child: SizedBox(
                                height: 270.0,
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
