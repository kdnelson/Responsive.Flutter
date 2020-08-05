import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/utilities/styles.dart';
import 'package:responsive_flutter/viewmodel/shopping_cart_viewmodel.dart';
import 'package:stacked/stacked.dart';

class DecreaseCartCounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ShoppingCartViewModel>.reactive(
      viewModelBuilder: () => ShoppingCartViewModel(),
      builder: (context, model, child) => GestureDetector(
        onTap: model.decreaseCounter,
        child: Container(
          decoration: BoxDecoration(
            color: decreaseBackgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          width: 100,
          height: 100,
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Tap To - Counter',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: backgroundColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Text(
                model.counter < 0 ? '0' : model.counter.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: backgroundColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
