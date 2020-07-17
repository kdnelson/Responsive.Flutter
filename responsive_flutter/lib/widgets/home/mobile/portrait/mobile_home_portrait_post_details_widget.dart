import 'package:flutter/material.dart';
import 'package:responsive_flutter/enums/view_state_enum.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/common/base_widget.dart';
import 'package:responsive_flutter/widgets/home/mobile/portrait/mobile_home_portrait_comments_per_post_widget.dart';

class MobileHomePortraitPostDetailsWidget extends StatelessWidget {
  final HomeViewModel model;
  final int postIndex;
  MobileHomePortraitPostDetailsWidget(this.model, this.postIndex);

  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeViewModel>(
        viewModel: HomeViewModel(),
        onModelReady: (model) =>
            model.getCommentsPerPost(model.posts[this.postIndex].id),
        builder: (context) => model.state == ViewState.Busy
            ? Center(child: CircularProgressIndicator())
            : Scaffold(
                backgroundColor: Colors.white,
                body: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 50),
                      Text(model.posts[this.postIndex].title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                              color: Colors.black)),
                      Text(
                        'by ${model.user.name}',
                        style: TextStyle(fontSize: 15.0),
                      ),
                      SizedBox(height: 20),
                      Text(model.posts[this.postIndex].body),
                      SizedBox(height: 20),
                      MobileHomePortraitCommentsPerPostWidget()
                    ],
                  ),
                ),
              ));
  }
}
