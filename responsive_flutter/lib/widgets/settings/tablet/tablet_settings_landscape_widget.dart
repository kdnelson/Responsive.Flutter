import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/settings_viewmodel.dart';
import 'package:responsive_flutter/widgets/cart/decrease_cart_counter_widget.dart';
import 'package:responsive_flutter/widgets/cart/increase_cart_counter_widget.dart';
import 'package:responsive_flutter/widgets/responsive/common/base_viewmodel_provider_widget.dart';
import 'package:responsive_flutter/widgets/settings/common/settings_counter_partial_widget.dart';
import 'package:responsive_flutter/widgets/settings/common/settings_streams_widget.dart';

class TabletSettingsLandscapeWidget
    extends BaseViewModelProviderWidget<SettingsViewModel> {
  @override
  Widget build(BuildContext context, SettingsViewModel model) {
    return Column(children: <Widget>[
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Text(
            model.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
        ),
      ),
      SizedBox(height: 20),
      SettingsCounterPartialWidget(),
      SizedBox(height: 35),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        DecreaseCartCounterWidget(),
        SizedBox(width: 20.0),
        IncreaseCartCounterWidget(),
      ]),
      SizedBox(height: 40),
      SettingsStreamsWidget(),
    ]);
  }
}
