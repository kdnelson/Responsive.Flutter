import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/settings_viewmodel.dart';
import 'package:responsive_flutter/widgets/reactive_trial/double_increase_counter_widget.dart';
import 'package:responsive_flutter/widgets/reactive_trial/single_increase_counter_widget.dart';
import 'package:responsive_flutter/widgets/responsive/common/base_viewmodel_provider_widget.dart';

class MobileSettingsLandscapeWidget
    extends BaseViewModelProviderWidget<SettingsViewModel> {
  @override
  Widget build(BuildContext context, SettingsViewModel model) {
    return Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 40.0, bottom: 50.0),
        child: Text(
          "Settings Landscape: " + model.counterDisplay,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      Row(
        children: <Widget>[
          SizedBox(width: 165),
          SingleIncreaseCounterWidget(),
          SizedBox(width: 50),
          DoubleIncreaseCounterWidget(),
        ],
      ),
    ]);
  }
}
