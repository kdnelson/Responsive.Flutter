import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/dialogs/pop_scope_dialog.dart';

import '../base_model_widget.dart';

class TabletHomePortraitWidget extends BaseModelWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return PopScopeDialog(context,
        child: Text(
          "Portrait: " + model.counterDisplay,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ));
  }
}
