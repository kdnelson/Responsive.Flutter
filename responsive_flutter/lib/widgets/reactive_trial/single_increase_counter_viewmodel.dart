import 'package:responsive_flutter/utilities/locator.dart';
import 'package:responsive_flutter/widgets/reactive_trial/counter_service.dart';
import 'package:stacked/stacked.dart';

class SingleIncreaseCounterViewModel extends ReactiveViewModel {
  final _counterService = locator<CounterService>();

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_counterService];

  int get counter => _counterService.counter;

  void updateCounter() {
    _counterService.incrementCounter();
    notifyListeners();
  }
}
