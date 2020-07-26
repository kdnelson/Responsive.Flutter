import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/settings_viewmodel.dart';
import 'package:responsive_flutter/widgets/cart/decrease_cart_counter_widget.dart';
import 'package:responsive_flutter/widgets/cart/increase_cart_counter_widget.dart';
import 'package:responsive_flutter/widgets/responsive/common/base_viewmodel_provider_widget.dart';
import 'package:responsive_flutter/widgets/settings/common/settings_counter_partial_widget.dart';

class MobileSettingsLandscapeWidget
    extends BaseViewModelProviderWidget<SettingsViewModel> {
  @override
  Widget build(BuildContext context, SettingsViewModel model) {
    return Column(children: <Widget>[
      SizedBox(height: 30),
      SettingsCounterPartialWidget(),
      SizedBox(height: 35),
      Row(children: <Widget>[
        SizedBox(width: 165),
        DecreaseCartCounterWidget(),
        SizedBox(width: 50),
        IncreaseCartCounterWidget(),
      ]),
    ]);
  }
}
