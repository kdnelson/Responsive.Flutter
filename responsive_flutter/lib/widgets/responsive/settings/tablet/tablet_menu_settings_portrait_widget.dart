import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/utilities/styles.dart';
import 'package:responsive_flutter/viewmodel/settings_viewmodel.dart';
import 'package:responsive_flutter/widgets/responsive/common/base_viewmodel_provider_widget.dart';
import 'package:responsive_flutter/widgets/responsive/settings/controls/settings_drawer_widget.dart';
import 'package:responsive_flutter/widgets/settings/tablet/tablet_settings_portrait_widget.dart';

class TabletMenuSettingsPortraitWidget
    extends BaseViewModelProviderWidget<SettingsViewModel> {
  @override
  Widget build(BuildContext context, SettingsViewModel model) {
    return Scaffold(
      floatingActionButton: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 32, bottom: 100.0),
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
          Padding(
            padding: EdgeInsets.only(bottom: 100.0),
            child: Align(
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
          ),
        ],
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
