import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/utilities/styles.dart';
import 'package:responsive_flutter/viewmodel/settings_viewmodel.dart';
import 'package:responsive_flutter/widgets/responsive/common/base_viewmodel_provider_widget.dart';
import 'package:responsive_flutter/widgets/responsive/settings/controls/settings_drawer_widget.dart';
import 'package:responsive_flutter/widgets/settings/tablet/tablet_settings_landscape_widget.dart';

class TabletMenuSettingsLandscapeWidget
    extends BaseViewModelProviderWidget<SettingsViewModel> {
  @override
  Widget build(BuildContext context, SettingsViewModel model) {
    return Scaffold(
      floatingActionButton: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 190),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: FloatingActionButton(
                  backgroundColor: foreGroundColor,
                  foregroundColor: backGroundColor,
                  child: Icon(Icons.remove),
                  heroTag: null,
                  onPressed: () {
                    model.decreaseCounter();
                  }),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
                backgroundColor: foreGroundColor,
                foregroundColor: backGroundColor,
                child: Icon(Icons.add),
                heroTag: null,
                onPressed: () {
                  model.increaseCounter();
                }),
          ),
        ],
      ),
      body: Row(
        children: <Widget>[
          SettingsDrawerWidget(),
          Expanded(
            child: TabletSettingsLandscapeWidget(),
          ),
        ],
      ),
    );
  }
}
