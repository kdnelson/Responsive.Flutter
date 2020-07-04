import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/settings_viewmodel.dart';
import 'package:responsive_flutter/widgets/home/base_model_widget.dart';
import 'package:responsive_flutter/widgets/home/tablet/tablet_settings_portrait_widget.dart';
import 'package:responsive_flutter/widgets/responsive/common/settings_drawer_widget.dart';

class TabletMenuSettingsPortraitWidget
    extends BaseModelWidget<SettingsViewModel> {
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
            model.updateTitle();
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
