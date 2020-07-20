import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/login_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'login_entry_form_widget.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
        viewModelBuilder: () => LoginViewModel(),
        onModelReady: (model) => model.initialize(),
        builder: (context, model, child) => LoginEntryFormWidget());
  }
}
