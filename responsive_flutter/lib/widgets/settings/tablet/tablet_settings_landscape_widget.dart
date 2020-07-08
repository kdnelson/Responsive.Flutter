import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/settings_viewmodel.dart';
import 'package:responsive_flutter/widgets/dialogs/exit_app_dialog.dart';

import '../../common/base_model_widget.dart';

class TabletSettingsLandscapeWidget
    extends BaseModelProviderWidget<SettingsViewModel> {
  @override
  Widget build(BuildContext context, SettingsViewModel model) {
    return ExitAppDialog(context,
        child: Text(
          "Settings Landscape: " + model.counterDisplay,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ));
  }
}
