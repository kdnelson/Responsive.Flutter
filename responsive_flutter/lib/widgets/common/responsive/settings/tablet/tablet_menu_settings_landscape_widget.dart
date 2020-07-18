import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/utilities/styles.dart';
import 'package:responsive_flutter/viewmodel/settings_viewmodel.dart';
import 'package:responsive_flutter/widgets/common/responsive/settings/controls/settings_drawer_widget.dart';
import 'package:responsive_flutter/widgets/settings/tablet/tablet_settings_landscape_widget.dart';
import 'package:stacked/stacked.dart';

class TabletMenuSettingsLandscapeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SettingsViewModel>.nonReactive(
      viewModelBuilder: () => SettingsViewModel(),
      disposeViewModel: true,
      onModelReady: (model) => model.initialize(),
      builder: (context, model, child) => Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 100.0),
          child: FloatingActionButton(
            backgroundColor: foregroundColor,
            foregroundColor: backgroundColor,
            child: Icon(Icons.add),
            onPressed: () {
              model.updateVm();
            },
          ),
        ),
        body: Row(
          children: <Widget>[
            SettingsDrawerWidget(),
            Expanded(
              child: TabletSettingsLandscapeWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
