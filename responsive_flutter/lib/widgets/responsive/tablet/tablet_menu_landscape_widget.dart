import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/home/base_model_widget.dart';
import 'package:responsive_flutter/widgets/home/tablet/tablet_home_landscape_widget.dart';
import 'package:responsive_flutter/widgets/responsive/common/drawer_widget.dart';

class TabletMenuLandscapeWidget extends BaseModelWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
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
      body: Row(
        children: <Widget>[
          DrawerWidget(),
          Expanded(
            child: TabletHomeLandscapeWidget(),
          ),
        ],
      ),
    );
  }
}
