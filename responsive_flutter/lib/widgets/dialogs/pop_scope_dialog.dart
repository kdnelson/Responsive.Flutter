import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopScopeDialog extends StatelessWidget {
  final Widget child;

  const PopScopeDialog(BuildContext context, {Key key, @required this.child})
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
                  height: 300.0,
                  width: 300.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'Exit Responsive App?',
                          style: TextStyle(fontSize: 25.0, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            RaisedButton(
                              color: Colors.black,
                              onPressed: () {
                                Navigator.of(context).pop(true);
                              },
                              child: Text(
                                'Okay',
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            RaisedButton(
                              color: Colors.red,
                              onPressed: () {
                                Navigator.of(context).pop(false);
                              },
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.white),
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
