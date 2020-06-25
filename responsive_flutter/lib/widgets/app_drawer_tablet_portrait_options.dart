import 'package:flutter/cupertino.dart';

class AppDrawerTabletPortraitOptions extends StatelessWidget {
  final String title;
  final IconData iconData;

  const AppDrawerTabletPortraitOptions({
    Key key,
    this.title,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            iconData,
            size: 45,
          ),
          Text(title, style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}