import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/utilities/styles.dart';

class ExitAppDialog extends StatelessWidget {
  final Widget child;

  const ExitAppDialog(BuildContext context, {Key key, @required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final value = await showDialog<bool>(
            context: context,
            builder: (context) {
              return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Container(
                  height: 150.0,
                  width: 300.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'Exit Responsive App?',
                          style:
                              TextStyle(fontSize: 25.0, color: foreGroundColor),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        height: 2,
                        thickness: 1,
                        indent: 10,
                        endIndent: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 20, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            RaisedButton(
                              color: foreGroundColor,
                              onPressed: () {
                                Navigator.of(context).pop(true);
                              },
                              child: Text(
                                'Okay',
                                style: TextStyle(
                                    fontSize: 18.0, color: backGroundColor),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            RaisedButton(
                              color: cautionBackgroundColor,
                              onPressed: () {
                                Navigator.of(context).pop(false);
                              },
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                    fontSize: 18.0, color: backGroundColor),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });

        return value == true;
      },
      child: child,
    );
  }
}
