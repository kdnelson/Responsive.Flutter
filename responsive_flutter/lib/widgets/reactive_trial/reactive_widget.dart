import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/widgets/reactive_trial/double_increase_counter_widget.dart';
import 'package:responsive_flutter/widgets/reactive_trial/single_increase_counter_widget.dart';

class ReactiveView extends StatelessWidget {
  const ReactiveView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: <Widget>[
            SizedBox(width: 50),
            SingleIncreaseCounterWidget(),
            SizedBox(width: 50),
            DoubleIncreaseCounterWidget(),
          ],
        ),
      ),
    );
  }
}
