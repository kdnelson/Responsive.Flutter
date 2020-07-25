import 'package:responsive_flutter/services/authentication_service.dart';
import 'package:responsive_flutter/utilities/locator.dart';
import 'dart:math';

import 'package:stacked/stacked.dart';

class LoginViewModel extends BaseViewModel {
  String greeting = 'Tap to Login';
  String errorMessage;

  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();

  void initialize() {
    // Get state from Database...
    notifyListeners();
  }

  Future<int> login() async {
    int response = -1;
    setBusy(true);

    var randomInt = Random.secure();
    var userId = randomInt.nextInt(10);

    // Not a number
    if (userId == null) {
      errorMessage = 'Value entered is not a number';
      setBusy(false);
      return response;
    }

    var success = await _authenticationService.login(userId);
    if (success == true) {
      response = userId;
      return response;
    } else {
      // Route to error page
    }

    setBusy(false);
    return response;
  }
}
