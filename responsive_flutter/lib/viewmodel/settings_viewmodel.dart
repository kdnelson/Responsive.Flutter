import 'package:flutter/cupertino.dart';

class SettingsViewModel extends ChangeNotifier {
  String title = 'Settings';
  String counterDisplay = '0';

  void initialize() {
    // Get state from Database...
    notifyListeners();
  }

  int counter = 0;
  void updateVm() {
    counter++;
    counterDisplay = '$counter';
    notifyListeners();
  }
}
