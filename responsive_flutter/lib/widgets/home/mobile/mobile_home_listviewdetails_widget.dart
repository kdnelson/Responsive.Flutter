import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';

class MobileHomeListViewDetailsWidget extends StatelessWidget {
  final HomeViewModel model;
  final int postIndex;
  MobileHomeListViewDetailsWidget(this.model, this.postIndex);

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
            // TODO Add this comment list
            //Comments(post.id)
          ],
        ),
      ),
    );
  }
}
