import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/services/navigator_service.dart';
import 'package:responsive_flutter/utilities/locator.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/home/common/mobile_home_posts_listview_widget.dart';
import 'package:responsive_flutter/widgets/home/mobile/common/home_post_details_widget.dart';
import 'package:responsive_flutter/widgets/responsive/common/base_viewmodel_provider_widget.dart';

class HomePostsPerUserWidget
    extends BaseViewModelProviderWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return ListView.builder(
        itemCount: model.posts.length,
        itemBuilder: (context, index) => MobileHomePostsListViewWidget(
              post: model.posts[index],
              onTap: () {
                locator<NavigatorService>().navigateToPage(MaterialPageRoute(
                    builder: (context) => HomePostDetailsWidget(model, index)));
              },
            ));
  }
}
