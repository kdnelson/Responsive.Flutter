import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/enums/view_state_enum.dart';
import 'package:responsive_flutter/utilities/styles.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/home/common/home_comment_item.dart';
import 'package:stacked/stacked.dart';

class HomeCommentsPerPostWidget extends StatelessWidget {
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
                ? Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: CircularProgressIndicator(
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(foregroundColor),
                    ),
                  )
                : model.comments == null
                    ? Center(
                        child: Text(
                        'Model is Empty',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ))
                    : Expanded(
                        child: ListView(
                          children: model.comments
                              .map((comment) => CommentItem(comment))
                              .toList(),
                        ),
                      ));
  }
}
