import 'package:flutter/cupertino.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';

class MobileHomePortraitWidget extends StatelessWidget {
  final HomeViewModel viewmodel;

  const MobileHomePortraitWidget(HomeViewModel model, {Key key, this.viewmodel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Portrait",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          )),
    );
  }
}
