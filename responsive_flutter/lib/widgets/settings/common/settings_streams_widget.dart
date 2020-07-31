import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/viewmodel/streams_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SettingsStreamsWidget extends StatelessWidget {
  final StreamsViewModel model;

  const SettingsStreamsWidget({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StreamsViewModel>.reactive(
      viewModelBuilder: () => StreamsViewModel(),
      builder: (context, model, child) => Column(
        children: <Widget>[
          GestureDetector(
            onTap: model.swapSources,
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                width: 150,
                height: 30,
                alignment: Alignment.center,
                child: Text(
                  model.streamLabel,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )),
          ),
          SizedBox(height: 20),
          Center(
            child: model.dataReady == false
                ? Text('Loading...',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ))
                : Text(
                    model.epochTitle,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
