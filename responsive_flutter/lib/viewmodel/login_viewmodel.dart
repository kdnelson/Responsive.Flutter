import 'package:flutter/cupertino.dart';
import 'package:responsive_flutter/enums/view_state_enum.dart';

class LoginViewModel extends ChangeNotifier {
  String greeting = 'Tap';
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  void initialize() {
    notifyListeners();
  }

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }

  Future<bool> login() async {
    setState(ViewState.Busy);
    // make an api call
    //setState(ViewState.Idle);
    return true;
  }
}
