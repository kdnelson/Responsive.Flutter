import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/common/base_model_widget.dart';
import 'package:responsive_flutter/widgets/common/responsive/home/controls/home_drawer_widget.dart';
import 'package:responsive_flutter/widgets/home/tablet/tablet_home_portrait_widget.dart';

class TabletMenuHomePortraitWidget
    extends BaseModelProviderWidget<HomeViewModel> {
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
            model.updateVm();
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: TabletHomePortraitWidget(),
          ),
          HomeDrawerWidget(),
        ],
      ),
    );
  }
}
