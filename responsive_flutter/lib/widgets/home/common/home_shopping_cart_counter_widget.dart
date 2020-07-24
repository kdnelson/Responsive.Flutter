import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/utilities/styles.dart';
import 'package:responsive_flutter/widgets/reactive_trial/single_increase_counter_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeShoppingCartCounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SingleIncreaseCounterViewModel>.reactive(
        viewModelBuilder: () => SingleIncreaseCounterViewModel(),
        builder: (context, model, child) => Text(
            'Cart: ' + model.counter.toString(),
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: foregroundColor,
                backgroundColor: backgroundColor,
                fontWeight: FontWeight.bold,
                fontSize: 24.0)));
  }
}
