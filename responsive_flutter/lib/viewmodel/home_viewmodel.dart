import 'package:flutter/cupertino.dart';

class HomeViewModel extends ChangeNotifier {
  String title = 'default';

  void initialize() {
    // Get state from Database...
    title = '0';
    notifyListeners();
  }

  int counter = 0;
  void updateTitle() {
    counter++;
    title = '$counter';
    notifyListeners();
  }
}
