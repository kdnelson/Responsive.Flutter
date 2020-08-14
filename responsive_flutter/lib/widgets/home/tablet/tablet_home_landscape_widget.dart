import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/utilities/styles.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/dialogs/common/exit_app_dialog.dart';
import 'package:responsive_flutter/widgets/home/common/home_shopping_cart_counter_widget.dart';
import 'package:responsive_flutter/widgets/home/mobile/common/home_posts_per_user_widget.dart';
import 'package:responsive_flutter/widgets/responsive/common/base_viewmodel_provider_widget.dart';

class TabletHomeLandscapeWidget
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
        color: backGroundColor,
        child: Column(
          // TODO Use this for a text entry
          // TextEditingController _controller = TextEditingController();
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            model.isBusy
                ? Padding(
                    padding: const EdgeInsets.only(top: 400.0),
                    child: Container(
                      color: backGroundColor,
                      child: CircularProgressIndicator(
                        valueColor:
                            new AlwaysStoppedAnimation<Color>(foreGroundColor),
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Center(
                            child: Text(
                              model.title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                              ),
                            ),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                model.isolateResponse == null
                                    ? Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10.0, bottom: 20.0),
                                        child: Text('Loading...',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            )),
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10.0, bottom: 20.0),
                                        child: Text(
                                          'IsolateDto: ' +
                                              model.isolateResponse.length
                                                  .toString(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 17.0, bottom: 20.0),
                                  child: HomeShoppingCartCounterWidget(),
                                ),
                              ]),
                          MediaQuery.removePadding(
                              context: context,
                              removeTop: true,
                              child: SizedBox(
                                height: 635,
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
