import 'package:flutter/cupertino.dart';

class ReportsViewModel extends ChangeNotifier {
  String title = 'Reports';
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
