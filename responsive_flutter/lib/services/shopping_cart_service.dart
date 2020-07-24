import 'package:observable_ish/value/value.dart';
import 'package:stacked/stacked.dart';

class ShoppingCartService with ReactiveServiceMixin {
  RxValue<int> _counter = RxValue<int>(initial: 0);
  int get counter => _counter.value;

  ShoppingCartService() {
    listenToReactiveValues([_counter]);
  }

  void incrementCounter() {
    if (_counter.value < 0) {
      _counter.value = 0;
    } else {
      _counter.value++;
    }
  }

  void decreaseCounter() {
    if (_counter.value < 0) {
      _counter.value = 0;
    } else {
      _counter.value--;
    }
  }
}
