import 'package:flutter/cupertino.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';

import '../base_model_widget.dart';

class TabletHomePortraitWidget extends BaseModelWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Container(
      child: Text("Portrait: " + model.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          )),
    );
  }
}
