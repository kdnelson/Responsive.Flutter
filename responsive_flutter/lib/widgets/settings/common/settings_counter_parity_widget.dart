import 'package:flutter/cupertino.dart';
import 'package:responsive_flutter/viewmodel/settings_viewmodel.dart';
import 'package:responsive_flutter/widgets/responsive/common/base_viewmodel_provider_widget.dart';

class SettingsCounterParityWidget
    extends BaseViewModelProviderWidget<SettingsViewModel> {
  @override
  Widget build(BuildContext context, SettingsViewModel model) {
    return Column(
      children: <Widget>[
        Text(
          model.parity.toString(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
