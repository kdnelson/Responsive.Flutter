import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/enums/view_state_enum.dart';
import 'package:responsive_flutter/services/navigator_service.dart';
import 'package:responsive_flutter/utilities/locator.dart';
import 'package:responsive_flutter/utilities/styles.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/home/common/mobile_home_posts_listview_widget.dart';
import 'package:responsive_flutter/widgets/home/mobile/common/home_post_details_widget.dart';
import 'package:stacked/stacked.dart';

class HomePostsPerUserWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.nonReactive(
        viewModelBuilder: () => HomeViewModel(),
        disposeViewModel: true,
        builder: (context, model, child) => model.posts == null
            ? Center(
                child: Text(
                'Model is Empty',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ))
            : model.state == ViewState.Busy
                ? Center(
                    child: CircularProgressIndicator(
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(foregroundColor),
                    ),
                  )
                : ListView.builder(
                    itemCount: model.posts.length,
                    itemBuilder: (context, index) =>
                        MobileHomePostsListViewWidget(
                          post: model.posts[index],
                          onTap: () {
                            locator<NavigatorService>().navigateToPage(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        HomePostDetailsWidget(model, index)));
                          },
                        )));
  }
}
