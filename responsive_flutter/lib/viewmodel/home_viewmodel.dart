import 'package:flutter/cupertino.dart';

class HomeViewModel extends ChangeNotifier {
  String title = 'Home';
  String counterDisplay = '0';

  void initialize() {
    // Get state from Database...
    notifyListeners();
  }

  int counter = 0;
  void updateTitle() {
    counter++;
    counterDisplay = '$counter';
    notifyListeners();
  }
}
