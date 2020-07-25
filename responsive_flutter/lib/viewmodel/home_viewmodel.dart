import 'package:responsive_flutter/models/comment.dart';
import 'package:responsive_flutter/models/post.dart';
import 'package:responsive_flutter/models/user.dart';
import 'package:responsive_flutter/services/comments_service.dart';
import 'package:responsive_flutter/services/posts_service.dart';
import 'package:responsive_flutter/services/user_service.dart';
import 'package:responsive_flutter/utilities/locator.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  String title = 'Home';
  String menuLabel = 'Menu';
  String popupMenuTitle = 'Popup Menu';
  bool isPopupOpen = false;

  UserService _userService = locator<UserService>();
  User get user => _userService.user;

  PostsService _postsService = locator<PostsService>();
  List<Post> get posts => _postsService.posts;

  CommentsService _commentsService = locator<CommentsService>();
  List<Comment> get comments => _commentsService.comments;

  void initialize(userId) {
    // Get state from Database...
    if (userId > -1) {
      getPosts(userId);
    }

    notifyListeners();
  }

  void updateVm() {
    notifyListeners();
  }

  void setHomePopState(bool state) {
    isPopupOpen = state;
    notifyListeners();
  }

  Future getPosts(int userId) async {
    setBusy(true);
    await _userService.getUserProfile(userId);
    await _postsService.getPostsForUser(userId);
    setBusy(false);
  }

  Future getCommentsPerPost(int postId) async {
    setBusy(true);
    await _commentsService.getCommentsPerPost(postId);
    setBusy(false);
  }
}
