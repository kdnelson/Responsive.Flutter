import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/home/base_model_widget.dart';
import 'package:responsive_flutter/widgets/responsive/common/drawer_widget.dart';

// TODO Add extends BaseModelWidget<HomeViewModel> to the other 3 menu widgets
// TODO Get HomeViewModel passed to the home widgets outside the responsive folder

class MobileMenuPortraitWidget extends BaseModelWidget<HomeViewModel> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          model.updateTitle();
        },
      ),
      body: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 40.0, bottom: 15.0, left: 15.0, right: 15.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                size: 30,
              ),
              onPressed: () {
                _scaffoldKey?.currentState?.openDrawer();
              },
            ),
          ),
          Expanded(
            //child: MobileHomePortraitWidget(model),
            child: Text(model.title),
          ),
        ],
      ),
    );
  }
}