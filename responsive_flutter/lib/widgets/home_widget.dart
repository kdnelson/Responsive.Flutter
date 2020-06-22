import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'base_widget.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizingInfo) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height: 150,
                margin: const EdgeInsets.all(50),
                color: Colors.orange,
                child: BaseWidget(
                  builder: (context, sizingInfo) => Column(
                    children: <Widget>[
                      Text("Local Widget Size",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                      ),
                      Text(sizingInfo.localWidgetSize.toString(),
                        style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                      ),
                    ],
                  )
                  ),
                ),
              Text(sizingInfo.toString(),
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20),
              ),
            ],
          ),
        )
      );
    });
  }
}