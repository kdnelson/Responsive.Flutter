import 'package:stacked/stacked.dart';

class SettingsViewModel extends StreamViewModel<int> {
  String title = 'Settings';
  String counterDisplay = '0';
  int counter = 0;
  String _parity = 'Even';
  String streamLabel = 'Switch Stream';
  String get parity => _parity;
  bool _otherSource = false;
  String get epochTitle => 'Epoch in seconds \n $data';

  @override
  Stream<int> get stream =>
      _otherSource ? epochUpdates() : epochFasterUpdates();

  void swapSources() {
    _otherSource = !_otherSource;
    notifySourceChanged();
  }

  void initialize() {
    // Get state from Database...
    notifyListeners();
  }

  void updateParity(int value) {
    if (value.isOdd) {
      _parity = 'Odd';
    } else {
      _parity = 'Even';
    }
    notifyListeners();
  }

  void increaseCounter() {
    counter++;
    counterDisplay = '$counter';
    updateParity(counter);
    notifyListeners();
  }

  void decreaseCounter() {
    counter--;
    if (counter <= 0) {
      counter = 0;
      counterDisplay = '0';
    } else {
      counterDisplay = '$counter';
    }
    updateParity(counter);
    notifyListeners();
  }

  Stream<int> epochUpdates() async* {
    while (true) {
      await Future.delayed(const Duration(seconds: 2));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }

  Stream<int> epochFasterUpdates() async* {
    while (true) {
      await Future.delayed(const Duration(milliseconds: 200));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }
}
