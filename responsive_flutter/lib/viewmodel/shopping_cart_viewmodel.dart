import 'package:responsive_flutter/utilities/locator.dart';
import 'package:responsive_flutter/services/shopping_cart_service.dart';
import 'package:stacked/stacked.dart';

class ShoppingCartViewModel extends ReactiveViewModel {
  final _shoppingCartService = locator<ShoppingCartService>();

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_shoppingCartService];

  int get counter => _shoppingCartService.counter;

  void increaseCounter() {
    _shoppingCartService.incrementCounter();
    notifyListeners();
  }

  void decreaseCounter() {
    _shoppingCartService.decreaseCounter();
    notifyListeners();
  }
}
