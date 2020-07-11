import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:responsive_flutter/enums/view_state_enum.dart';
import 'package:responsive_flutter/models/post.dart';
import 'package:responsive_flutter/models/user.dart';
import 'package:responsive_flutter/services/posts_service.dart';
import 'package:responsive_flutter/services/user_service.dart';
import 'package:responsive_flutter/utilities/locator.dart';

class HomeViewModel extends ChangeNotifier {
  String title = 'Home';
  String manufacturingMenuTitle = 'Popup Menu';
  bool isManufacturerPopped = false;

  PostsService _postsService = locator<PostsService>();
  List<Post> get posts => _postsService.posts;

  UserService _userService = locator<UserService>();
  User get user => _userService.user;

  ViewState _state = ViewState.Idle;
  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }

  void initialize() {
    getPosts();
    notifyListeners();
  }

  void updateVm() {
    notifyListeners();
  }

  void setManufacturerPopState(bool state) {
    isManufacturerPopped = state;
    notifyListeners();
  }

  Future getPosts() async {
    // TODO get userId from LoginVm
    var randomInt = Random.secure();
    var userId = randomInt.nextInt(10);

    setState(ViewState.Busy);
    await _userService.getUserProfile(userId);
    await _postsService.getPostsForUser(userId);
    setState(ViewState.Idle);
  }
}
