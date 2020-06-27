import 'package:flutter/cupertino.dart';
import 'package:responsive_flutter/models/drawer_item_model.dart';
import 'package:responsive_flutter/widgets/home/base_model_widget.dart';

class MobileDrawerLandscapeOptionsWidget
    extends BaseModelWidget<DrawerItemModel> {
  @override
  Widget build(BuildContext context, DrawerItemModel model) {
    return Container(
      height: 70,
      alignment: Alignment.center,
      child: Icon(
        model.iconData,
        size: 30,
      ),
    );
  }
}
