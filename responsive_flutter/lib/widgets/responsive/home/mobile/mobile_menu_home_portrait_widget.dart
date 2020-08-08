import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/home/mobile/mobile_home_portrait_widget.dart';
import 'package:responsive_flutter/widgets/responsive/common/base_viewmodel_provider_widget.dart';
import 'package:responsive_flutter/widgets/responsive/home/controls/home_drawer_widget.dart';

class MobileMenuHomePortraitWidget
    extends BaseViewModelProviderWidget<HomeViewModel> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  MobileMenuHomePortraitWidget();

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: HomeDrawerWidget(),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 45.0, bottom: 10.0, left: 10.0, right: 10.0),
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
                  padding: const EdgeInsets.only(top: 2.0, left: 10.0),
                  child: Text(
                    model.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          ),
          MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: MobileHomePortraitWidget()),
        ],
      ),
    );
  }
}
