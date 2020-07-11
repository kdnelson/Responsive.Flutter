import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/services/navigator_service.dart';
import 'package:responsive_flutter/utilities/locator.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/common/base_model_widget.dart';
import 'package:responsive_flutter/widgets/home/mobile/mobile_home_listview_widget.dart';
import 'package:responsive_flutter/widgets/home/mobile/mobile_home_listviewdetails_widget.dart';

class MobileHomeGetPostsPerUser
    extends BaseViewModelProviderWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return ListView.builder(
        itemCount: model.posts.length,
        itemBuilder: (context, index) => MobileHomeListViewWidget(
              post: model.posts[index],
              onTap: () {
                locator<NavigatorService>().navigateToPage(MaterialPageRoute(
                    builder: (context) =>
                        MobileHomeListViewDetailsWidget(model, index)));
              },
            ));
  }
}
