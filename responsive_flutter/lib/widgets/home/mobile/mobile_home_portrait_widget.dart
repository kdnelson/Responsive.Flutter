
import 'package:flutter/cupertino.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';

class MobileHomePortraitWidget extends StatelessWidget {
  final HomeViewModel viewmodel;

  const MobileHomePortraitWidget(HomeViewModel model, 
  {
    Key key,
    this.viewmodel
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Mobile Portrait: " + viewmodel.title),
    );
  }
}