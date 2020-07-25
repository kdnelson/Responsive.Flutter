import 'package:flutter/cupertino.dart';
import 'package:responsive_flutter/viewmodel/settings_viewmodel.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

class SettingsCounterWidget extends HookViewModelWidget<SettingsViewModel> {
  SettingsCounterWidget({Key key}) : super(key: key, reactive: false);

  @override
  Widget buildViewModelWidget(
    BuildContext context,
    SettingsViewModel model,
  ) {
    return Text(
      "Settings Portrait: " + model.counterDisplay,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
}
