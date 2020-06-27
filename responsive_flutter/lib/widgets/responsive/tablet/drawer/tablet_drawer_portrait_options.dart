import 'package:flutter/cupertino.dart';
import 'package:responsive_flutter/models/drawer_item_model.dart';
import 'package:responsive_flutter/widgets/home/base_model_widget.dart';

class TabletDrawerPortraitOptions extends BaseModelWidget<DrawerItemModel> {
  @override
  Widget build(BuildContext context, DrawerItemModel model) {
    return Container(
      width: 152,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            model.iconData,
            size: 45,
          ),
          Text(model.title, style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}