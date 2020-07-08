import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/dialogs/common/exit_app_dialog.dart';

import '../../common/base_model_widget.dart';

class TabletHomeLandscapeWidget extends BaseModelProviderWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return ExitAppDialog(context,
        child: Text(
          "Home Landscape: " + model.counterDisplay,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ));
  }
}
