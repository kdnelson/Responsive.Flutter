import 'package:flutter/cupertino.dart';

class HomeViewModel extends ChangeNotifier {
  String title = 'default';

  void initialise() {
    title = 'Initialised';
    notifyListeners();
  }

  int counter = 0;
  void updateTitle() {
    counter++;
    title = '$counter';
    notifyListeners();
  }
}
