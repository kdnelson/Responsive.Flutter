import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/home/tablet/tablet_home_portrait_widget.dart';
import 'package:responsive_flutter/widgets/responsive/common/base_viewmodel_provider_widget.dart';
import 'package:responsive_flutter/widgets/responsive/home/controls/home_drawer_widget.dart';

class TabletMenuHomePortraitWidget
    extends BaseViewModelProviderWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Scaffold(
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
