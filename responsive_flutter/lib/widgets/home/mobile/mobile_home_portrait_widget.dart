import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/dialogs/common/exit_app_dialog.dart';
import 'package:responsive_flutter/widgets/dialogs/home/manufacturing_menu_dialog.dart';

import '../../common/base_model_widget.dart';

class MobileHomePortraitWidget extends BaseModelProviderWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return ExitAppDialog(context,
        child: Column(
          children: <Widget>[
            Text(
              "Home Portrait: " + model.counterDisplay,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            RaisedButton(
              color: Colors.black,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    model.isManufacturerPopped = true;
                    return ManufacturingMenuDialog(context);
                  },
                );
              },
              child: Text(
                'Display Menu',
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
          ],
        ));
  }
}
