import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/utilities/styles.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/home/common/home_comment_item.dart';
import 'package:responsive_flutter/widgets/responsive/common/base_viewmodel_provider_widget.dart';

class HomeCommentsPerPostWidget
    extends BaseViewModelProviderWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return model.isBusy
        ? Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: CircularProgressIndicator(
              valueColor: new AlwaysStoppedAnimation<Color>(foregroundColor),
            ),
          )
        : Expanded(
            child: ListView(
              children: model.comments
                  .map((comment) => CommentItem(comment))
                  .toList(),
            ),
          );
  }
}
