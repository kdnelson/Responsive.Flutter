import 'package:responsive_flutter/models/comment.dart';
import 'package:responsive_flutter/utilities/locator.dart';

import 'api.dart';
import 'base_service.dart';

class CommentsService extends BaseService {
  Api _api = locator<Api>();

  List<Comment> comments;

  Future getCommentsPerPost(int postId) async {
    comments = await _api.getCommentsForPost(postId);
  }
}
