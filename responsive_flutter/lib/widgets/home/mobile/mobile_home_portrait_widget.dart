import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/enums/view_state_enum.dart';
import 'package:responsive_flutter/viewmodel/home_viewmodel.dart';
import 'package:responsive_flutter/widgets/common/base_widget.dart';
import 'package:responsive_flutter/widgets/dialogs/common/exit_app_dialog.dart';
import 'package:responsive_flutter/widgets/dialogs/home/manufacturing_menu_dialog.dart';

import '../../common/base_model_widget.dart';

class MobileHomePortraitWidget extends BaseModelProviderWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return ExitAppDialog(
      context,
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            model.state == ViewState.Busy
                ? CircularProgressIndicator(
                    valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, bottom: 5.0, right: 20.0, left: 20.0),
                          child: RaisedButton(
                            color: Colors.black,
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  model.isManufacturerPopped = true;
                                  return BaseWidget<HomeViewModel>(
                                      viewModel: HomeViewModel(),
                                      builder: (context) =>
                                          ManufacturingMenuDialog());
                                },
                              );
                            },
                            child: Text(
                              'Display Menu',
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        // TODO add this to remove above spacing MediaQuery.removePadding(),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 0.0, bottom: 0.0, right: 15.0, left: 15.0),
                          child: SizedBox(
                            height: 490,
                            child: ListView.builder(
                                itemCount: model.posts.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Card(
                                    child: ListTile(
                                      dense: true,
                                      title: Text(
                                        model.posts[index].title,
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      onTap: () {
                                        // onScreenCatSelected(context, utilitiesBloc, menuBloc,
                                        //   snapshot.data[index].screenCategory.buttonName, index);
                                      },
                                    ),
                                  );
                                }),
                          ),
                        )
                      ]),
          ],
        ),
      ),
    );
  }
}
