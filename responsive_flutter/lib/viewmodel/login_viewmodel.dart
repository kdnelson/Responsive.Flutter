import 'package:flutter/cupertino.dart';
import 'package:responsive_flutter/enums/view_state_enum.dart';
import 'package:responsive_flutter/services/authentication_service.dart';
import 'package:responsive_flutter/utilities/locator.dart';
import 'dart:math';

class LoginViewModel extends ChangeNotifier {
  String greeting = 'Tap to Login';
  String errorMessage;

  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();

  ViewState _state = ViewState.Idle;
  ViewState get state => _state;

  void initialize() {
    notifyListeners();
  }

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }

  Future<int> login() async {
    int response = -1;
    setState(ViewState.Busy);

    var randomInt = Random.secure();
    var userId = randomInt.nextInt(10);

    // Not a number
    if (userId == null) {
      errorMessage = 'Value entered is not a number';
      setState(ViewState.Idle);
      return response;
    }

    var success = await _authenticationService.login(userId);
    if (success == true) {
      response = userId;
      return response;
    } else {
      // Route to error page
    }

    setState(ViewState.Idle);
    return response;
  }
}
