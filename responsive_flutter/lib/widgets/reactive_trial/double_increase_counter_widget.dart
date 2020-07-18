import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/widgets/reactive_trial/double_increase_counter_viewmodel.dart';
import 'package:stacked/stacked.dart';

class DoubleIncreaseCounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DoubleIncreaseCounterViewModel>.reactive(
      viewModelBuilder: () => DoubleIncreaseCounterViewModel(),
      builder: (context, model, child) => GestureDetector(
        onTap: model.updateCounter,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.green,
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Tap to increment the Counter',
                textAlign: TextAlign.center,
              ),
              Text(model.counter.toString())
            ],
          ),
        ),
      ),
    );
  }
}
