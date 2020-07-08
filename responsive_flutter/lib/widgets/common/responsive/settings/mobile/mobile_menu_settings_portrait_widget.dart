import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/settings_viewmodel.dart';
import 'package:responsive_flutter/widgets/common/base_model_widget.dart';
import 'package:responsive_flutter/widgets/common/responsive/common/settings_drawer_widget.dart';
import 'package:responsive_flutter/widgets/settings/mobile/mobile_settings_portrait_widget.dart';

class MobileMenuSettingsPortraitWidget
    extends BaseModelProviderWidget<SettingsViewModel> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, SettingsViewModel model) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: SettingsDrawerWidget(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
        onPressed: () {
          model.updateTitle();
        },
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 45.0, bottom: 15.0, left: 10.0, right: 10.0),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  onPressed: () {
                    _scaffoldKey?.currentState?.openDrawer();
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    model.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MobileSettingsPortraitWidget(),
          ),
        ],
      ),
    );
  }
}
