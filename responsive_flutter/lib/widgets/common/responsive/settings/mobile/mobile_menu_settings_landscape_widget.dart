import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/settings_viewmodel.dart';
import 'package:responsive_flutter/widgets/common/base_model_widget.dart';
import 'package:responsive_flutter/widgets/common/responsive/common/settings_drawer_widget.dart';
import 'package:responsive_flutter/widgets/settings/mobile/mobile_settings_landscape_widget.dart';

class MobileMenuSettingsLandscapeWidget
    extends BaseModelProviderWidget<SettingsViewModel> {
  @override
  Widget build(BuildContext context, SettingsViewModel model) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
        onPressed: () {
          model.updateTitle();
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
