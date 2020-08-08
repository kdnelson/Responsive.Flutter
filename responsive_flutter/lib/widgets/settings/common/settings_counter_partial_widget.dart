import 'package:flutter/cupertino.dart';
import 'package:responsive_flutter/widgets/settings/common/settings_counter_parity_widget.dart';
import 'package:responsive_flutter/widgets/settings/common/settings_counter_partial_hook_widget.dart';

class SettingsCounterPartialWidget extends StatelessWidget {
  const SettingsCounterPartialWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SettingsCounterWidget(),
        SizedBox(width: 20.0),
        SettingsCounterParityWidget(),
      ],
    );
  }
}
