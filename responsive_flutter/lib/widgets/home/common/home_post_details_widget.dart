import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/home/common/home_comments_per_post_widget.dart';

class HomePostDetailsWidget extends StatelessWidget {
  final HomeViewModel model;
  final int postIndex;
  HomePostDetailsWidget(this.model, this.postIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            HomeCommentsPerPostWidget(model.posts[this.postIndex].id)
          ],
        ),
      ),
    );
  }
}
