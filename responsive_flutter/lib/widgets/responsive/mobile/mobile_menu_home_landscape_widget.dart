import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/home/base_model_widget.dart';
import 'package:responsive_flutter/widgets/home/mobile/mobile_home_landscape_widget.dart';
import 'package:responsive_flutter/widgets/responsive/common/home_drawer_widget.dart';

class MobileMenuHomeLandscapeWidget extends BaseModelWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
        onPressed: () {
          model.updateTitle();
        },
      ),
      body: Row(
        children: <Widget>[
          HomeDrawerWidget(),
          Expanded(
            child: Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: MobileHomeLandscapeWidget(),
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
