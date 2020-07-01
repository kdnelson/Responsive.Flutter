import 'package:flutter/cupertino.dart';

class LoginViewModel extends ChangeNotifier {
  String greeting = 'Tap';

  void initialize() {
    notifyListeners();
  }

  void updateLogin() {
    notifyListeners();
  }
}
