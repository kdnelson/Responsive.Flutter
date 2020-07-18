import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/utilities/styles.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/common/base_model_widget.dart';
import 'package:responsive_flutter/widgets/common/responsive/home/controls/home_drawer_widget.dart';
import 'package:responsive_flutter/widgets/home/tablet/tablet_home_landscape_widget.dart';

class TabletMenuHomeLandscapeWidget
    extends BaseViewModelProviderWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Scaffold(
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
          HomeDrawerWidget(),
          Expanded(
            child: TabletHomeLandscapeWidget(),
          ),
        ],
      ),
    );
  }
}
