import 'package:flutter/cupertino.dart';

class SettingsViewModel extends ChangeNotifier {
  String title = 'Settings';
  String counterDisplay = '0';
  int counter = 0;
  String _parity = 'Even';
  String get parity => _parity;

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
}
