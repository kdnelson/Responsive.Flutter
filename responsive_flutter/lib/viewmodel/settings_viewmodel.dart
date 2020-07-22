import 'package:flutter/cupertino.dart';

class SettingsViewModel extends ChangeNotifier {
  String title = 'Settings';
  String counterDisplay = '0';
  int counter = 0;

  void initialize() {
    // Get state from Database...
    notifyListeners();
  }

  void increaseCounter() {
    counter++;
    counterDisplay = '$counter';
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

    notifyListeners();
  }
}
