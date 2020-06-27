import 'package:flutter/cupertino.dart';
import 'package:responsive_flutter/models/drawer_item_model.dart';
import 'package:responsive_flutter/widgets/home/base_model_widget.dart';

class TabletDrawerLandscapeOptionsWidget
    extends BaseModelWidget<DrawerItemModel> {
  @override
  Widget build(BuildContext context, DrawerItemModel model) {
    return Container(
      padding: const EdgeInsets.only(left: 25),
      height: 80,
      child: Row(
        children: <Widget>[
          Icon(
            model.iconData,
            size: 25,
          ),
          SizedBox(
            width: 25,
          ),
          Text(
            model.title,
            style: TextStyle(fontSize: 21),
          )
        ],
      ),
    );
  }
}
