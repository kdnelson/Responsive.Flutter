import 'package:flutter/cupertino.dart';

class HomeViewModel extends ChangeNotifier {
  String title = 'Home';
  String counterDisplay = '0';
  bool isManufacturerPopped = false;

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

  void setManufacturerPopState(bool state) {
    isManufacturerPopped = state;
    notifyListeners();
  }
}
