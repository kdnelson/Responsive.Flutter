import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/settings_viewmodel.dart';
import 'package:responsive_flutter/widgets/reactive_trial/double_increase_counter_widget.dart';
import 'package:responsive_flutter/widgets/reactive_trial/single_increase_counter_widget.dart';
import 'package:responsive_flutter/widgets/responsive/common/base_viewmodel_provider_widget.dart';

class MobileSettingsPortraitWidget
    extends BaseViewModelProviderWidget<SettingsViewModel> {
  @override
  Widget build(BuildContext context, SettingsViewModel model) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 30.0, bottom: 60.0),
          child: Text(
            "Settings Portrait: " + model.counterDisplay,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Row(
          children: <Widget>[
            SizedBox(width: 55),
            SingleIncreaseCounterWidget(),
            SizedBox(width: 50),
            DoubleIncreaseCounterWidget(),
          ],
        ),
      ],
    );
  }
}
