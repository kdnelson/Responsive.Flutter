import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/settings_viewmodel.dart';
import 'package:responsive_flutter/widgets/dialogs/pop_scope_dialog.dart';

import '../base_model_widget.dart';

class TabletSettingsPortraitWidget extends BaseModelWidget<SettingsViewModel> {
  @override
  Widget build(BuildContext context, SettingsViewModel model) {
    return PopScopeDialog(context,
        child: Text(
          "Settings Portrait: " + model.counterDisplay,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ));
  }
}
