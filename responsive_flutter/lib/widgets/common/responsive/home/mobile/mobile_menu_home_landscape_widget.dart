import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/login_viewmodel.dart';
import 'package:responsive_flutter/widgets/common/responsive/home/controls/home_drawer_widget.dart';
import 'package:responsive_flutter/widgets/home/mobile/landscape/mobile_home_landscape_widget.dart';
import 'package:stacked/stacked.dart';

class MobileMenuHomeLandscapeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.nonReactive(
      viewModelBuilder: () => LoginViewModel(),
      disposeViewModel: true,
      onModelReady: (model) => model.initialize(),
      builder: (context, model, child) => Scaffold(
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
      ),
    );
  }
}
