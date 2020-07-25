import 'package:responsive_flutter/utilities/locator.dart';
import 'package:responsive_flutter/services/shopping_cart_service.dart';
import 'package:stacked/stacked.dart';

class ShoppingCartViewModel extends ReactiveViewModel {
  final _shoppingCartService = locator<ShoppingCartService>();
  int get counter => _shoppingCartService.counter;

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_shoppingCartService];

  void increaseCounter() {
    _shoppingCartService.incrementCounter();
    notifyListeners();
  }

  void decreaseCounter() {
    _shoppingCartService.decreaseCounter();
    notifyListeners();
  }
}
