import 'package:flutter/cupertino.dart';
import 'package:responsive_flutter/enums/view_state_enum.dart';
import 'package:responsive_flutter/models/comment.dart';
import 'package:responsive_flutter/models/post.dart';
import 'package:responsive_flutter/models/user.dart';
import 'package:responsive_flutter/services/comments_service.dart';
import 'package:responsive_flutter/services/posts_service.dart';
import 'package:responsive_flutter/services/user_service.dart';
import 'package:responsive_flutter/utilities/locator.dart';

class HomeViewModel extends ChangeNotifier {
  String title = 'Home';
  String manufacturingMenuTitle = 'Popup Menu';
  bool isManufacturerPopped = false;

  UserService _userService = locator<UserService>();
  User get user => _userService.user;

  PostsService _postsService = locator<PostsService>();
  List<Post> get posts => _postsService.posts;

  CommentsService _commentsService = locator<CommentsService>();
  List<Comment> get comments => _commentsService.comments;

  ViewState _state = ViewState.Idle;
  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }

  void initialize(userId) {
    if (userId > -1) {
      getPosts(userId);
    }

    notifyListeners();
  }

  void updateVm() {
    notifyListeners();
  }

  void setManufacturerPopState(bool state) {
    isManufacturerPopped = state;
    notifyListeners();
  }

  Future getPosts(int userId) async {
    setState(ViewState.Busy);
    await _userService.getUserProfile(userId);
    await _postsService.getPostsForUser(userId);
    await _commentsService.getCommentsPerPost(84);
    setState(ViewState.Idle);
  }

  Future getCommentsPerPost(int postId) async {
    setState(ViewState.Busy);
    await _commentsService.getCommentsPerPost(postId);
    setState(ViewState.Idle);
  }
}
