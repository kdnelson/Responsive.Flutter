import 'package:responsive_flutter/models/post.dart';
import 'package:responsive_flutter/utilities/locator.dart';

import 'api.dart';
import 'base_service.dart';

class PostsService extends BaseService {
  Api _api = locator<Api>();

  List<Post> _posts;
  List<Post> get posts => _posts;

  Future getPostsForUser(int userId) async {
    _posts = await _api.getPostsForUser(userId);
  }
}
