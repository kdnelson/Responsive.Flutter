import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/login_viewmodel.dart';
import '../home/base_widget.dart';
import 'login_entry_form_widget.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget<LoginViewModel>(
        viewModel: LoginViewModel(),
        onModelReady: (model) => model.initialize(),
        builder: (context) => LoginEntryFormWidget());
  }
}
