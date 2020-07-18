import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/utilities/styles.dart';
import 'package:responsive_flutter/viewmodel/settings_viewmodel.dart';
import 'package:responsive_flutter/widgets/common/responsive/settings/controls/settings_drawer_widget.dart';
import 'package:responsive_flutter/widgets/settings/mobile/mobile_settings_landscape_widget.dart';
import 'package:stacked/stacked.dart';

class MobileMenuSettingsLandscapeWidget extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SettingsViewModel>.nonReactive(
        viewModelBuilder: () => SettingsViewModel(),
        disposeViewModel: true,
        onModelReady: (model) => model.initialize(),
        builder: (context, model, child) => Scaffold(
              key: _scaffoldKey,
              drawer: SettingsDrawerWidget(),
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
            ));
  }
}
