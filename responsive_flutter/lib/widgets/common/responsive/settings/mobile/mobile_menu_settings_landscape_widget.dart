import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/utilities/styles.dart';
import 'package:responsive_flutter/viewmodel/settings_viewmodel.dart';
import 'package:responsive_flutter/widgets/common/base_model_widget.dart';
import 'package:responsive_flutter/widgets/common/responsive/settings/controls/settings_drawer_widget.dart';
import 'package:responsive_flutter/widgets/settings/mobile/mobile_settings_landscape_widget.dart';

class MobileMenuSettingsLandscapeWidget
    extends BaseViewModelProviderWidget<SettingsViewModel> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, SettingsViewModel model) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: SettingsDrawerWidget(),
      floatingActionButton: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 123),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: FloatingActionButton(
                  backgroundColor: foregroundColor,
                  foregroundColor: backgroundColor,
                  child: Icon(Icons.remove),
                  heroTag: null,
                  onPressed: () {
                    model.updateVm();
                  }),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
                backgroundColor: foregroundColor,
                foregroundColor: backgroundColor,
                child: Icon(Icons.add),
                heroTag: null,
                onPressed: () {
                  model.updateVm();
                }),
          ),
        ],
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

// class MobileMenuSettingsLandscapeWidget
//     extends BaseViewModelProviderWidget<SettingsViewModel> {
//   @override
//   Widget build(BuildContext context, SettingsViewModel model) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: foregroundColor,
//         foregroundColor: backgroundColor,
//         child: Icon(Icons.add),
//         onPressed: () {
//           model.updateVm();
//         },
//       ),
//       body: Row(
//         children: <Widget>[
//           SettingsDrawerWidget(),
//           Expanded(
//             child: Center(
//               child: Column(
//                 children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.only(top: 30.0),
//                     child: MobileSettingsLandscapeWidget(),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
