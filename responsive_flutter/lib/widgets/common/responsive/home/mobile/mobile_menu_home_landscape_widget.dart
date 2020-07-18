import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/common/base_model_widget.dart';
import 'package:responsive_flutter/widgets/common/responsive/home/controls/home_drawer_widget.dart';
import 'package:responsive_flutter/widgets/home/mobile/landscape/mobile_home_landscape_widget.dart';

class MobileMenuHomeLandscapeWidget
    extends BaseViewModelProviderWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          HomeDrawerWidget(),
          Expanded(
            child: Center(
              child: Column(
                children: <Widget>[
                  MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: MobileHomeLandscapeWidget(),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
