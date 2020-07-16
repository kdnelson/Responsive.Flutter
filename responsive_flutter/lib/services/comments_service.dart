import 'package:responsive_flutter/models/comment.dart';
import 'package:responsive_flutter/utilities/locator.dart';

import 'api.dart';
import 'base_service.dart';

class CommentsService extends BaseService {
  Api _api = locator<Api>();

  List<Comment> _comments;
  List<Comment> get comments => _comments;

  Future getCommentsPerPost(int postId) async {
    _comments = await _api.getCommentsForPost(postId);
  }
}
