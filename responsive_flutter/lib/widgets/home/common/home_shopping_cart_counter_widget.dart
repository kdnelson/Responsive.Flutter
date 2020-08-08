import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/utilities/styles.dart';
import 'package:responsive_flutter/viewmodel/shopping_cart_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeShoppingCartCounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ShoppingCartViewModel>.reactive(
        viewModelBuilder: () => ShoppingCartViewModel(),
        builder: (context, model, child) => Text(
            'Cart: ' + model.counter.toString(),
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: foreGroundColor,
                backgroundColor: backGroundColor,
                fontWeight: FontWeight.bold,
                fontSize: 20.0)));
  }
}
