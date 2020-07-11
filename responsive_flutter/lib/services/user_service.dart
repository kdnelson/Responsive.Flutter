import 'package:responsive_flutter/models/user.dart';
import 'package:responsive_flutter/utilities/locator.dart';

import 'api.dart';
import 'base_service.dart';

class UserService extends BaseService {
  Api _api = locator<Api>();

  User _user;
  User get user => _user;

  Future getUserProfile(int userId) async {
    _user = await _api.getUserProfile(userId);
  }
}
