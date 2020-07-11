import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/settings_viewmodel.dart';
import 'package:responsive_flutter/widgets/common/base_model_widget.dart';
import 'package:responsive_flutter/widgets/common/responsive/settings/controls/settings_drawer_widget.dart';
import 'package:responsive_flutter/widgets/settings/tablet/tablet_settings_portrait_widget.dart';

class TabletMenuSettingsPortraitWidget
    extends BaseViewModelProviderWidget<SettingsViewModel> {
  @override
  Widget build(BuildContext context, SettingsViewModel model) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 100.0),
        child: FloatingActionButton(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          child: Icon(Icons.add),
          onPressed: () {
            model.updateVm();
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: TabletSettingsPortraitWidget(),
          ),
          SettingsDrawerWidget(),
        ],
      ),
    );
  }
}
