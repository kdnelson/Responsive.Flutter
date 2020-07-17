import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/enums/view_state_enum.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/common/base_model_widget.dart';
import 'package:responsive_flutter/widgets/dialogs/common/exit_app_dialog.dart';
import 'package:responsive_flutter/widgets/home/mobile/landscape/mobile_home_landscape_posts_per_user_widget.dart';

class MobileHomeLandscapeWidget
    extends BaseViewModelProviderWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    if (model.isManufacturerPopped == true) {
      model.setManufacturerPopState(false);
      Navigator.of(context).pop();
    }
    return ExitAppDialog(
      context,
      child: Container(
        color: Colors.white,
        child: Column(
          // TODO Use this for a text entry
          // TextEditingController _controller = TextEditingController();
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            model.state == ViewState.Busy
                ? Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: CircularProgressIndicator(
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Colors.black),
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
                              child: MobileHomeLandscapePostsPerUserWidget(),
                            ))
                      ]),
          ],
        ),
      ),
    );
  }
}
