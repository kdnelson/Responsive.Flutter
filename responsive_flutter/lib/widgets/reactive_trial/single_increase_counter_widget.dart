import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/widgets/reactive_trial/single_increase_counter_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SingleIncreaseCounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SingleIncreaseCounterViewModel>.reactive(
      viewModelBuilder: () => SingleIncreaseCounterViewModel(),
      builder: (context, model, child) => GestureDetector(
        onTap: model.updateCounter,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
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
