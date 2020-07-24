import 'package:responsive_flutter/utilities/locator.dart';
import 'package:responsive_flutter/services/shopping_cart_service.dart';
import 'package:stacked/stacked.dart';

class ShoppingCartViewModel extends ReactiveViewModel {
  final _counterService = locator<ShoppingCartService>();

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_counterService];

  int get counter => _counterService.counter;

  void increaseCounter() {
    _counterService.incrementCounter();
    notifyListeners();
  }

  void decreaseCounter() {
    _counterService.decreaseCounter();
    notifyListeners();
  }
}
