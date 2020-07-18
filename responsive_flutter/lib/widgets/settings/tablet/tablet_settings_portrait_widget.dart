import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/settings_viewmodel.dart';
import 'package:responsive_flutter/widgets/dialogs/common/exit_app_dialog.dart';
import 'package:responsive_flutter/widgets/common/base_model_widget.dart';

class TabletSettingsPortraitWidget
    extends BaseViewModelProviderWidget<SettingsViewModel> {
  @override
  Widget build(BuildContext context, SettingsViewModel model) {
    return ExitAppDialog(context,
        child: Text(
          "Settings Portrait: " + model.counterDisplay,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ));
  }
}
