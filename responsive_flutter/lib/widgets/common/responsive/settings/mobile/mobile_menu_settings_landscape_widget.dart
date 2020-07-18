import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/utilities/styles.dart';
import 'package:responsive_flutter/viewmodel/settings_viewmodel.dart';
import 'package:responsive_flutter/widgets/common/base_model_widget.dart';
import 'package:responsive_flutter/widgets/common/responsive/settings/controls/settings_drawer_widget.dart';
import 'package:responsive_flutter/widgets/settings/mobile/mobile_settings_landscape_widget.dart';

class MobileMenuSettingsLandscapeWidget
    extends BaseViewModelProviderWidget<SettingsViewModel> {
  @override
  Widget build(BuildContext context, SettingsViewModel model) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: foregroundColor,
        foregroundColor: backgroundColor,
        child: Icon(Icons.add),
        onPressed: () {
          model.updateVm();
        },
      ),
      body: Row(
        children: <Widget>[
          SettingsDrawerWidget(),
          Expanded(
            child: Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: MobileSettingsLandscapeWidget(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
