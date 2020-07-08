import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

abstract class BaseModelProviderWidget<T> extends Widget {
  // Define that we want to get back a type of T when building
  // Make it abstract so that we have to override, like a stateless or stateful widget.
  @protected
  Widget build(BuildContext context, T model);

  @override
  _DataProviderElement<T> createElement() => _DataProviderElement<T>(this);
}

class _DataProviderElement<T> extends ComponentElement {
  _DataProviderElement(BaseModelProviderWidget widget) : super(widget);

  @override
  BaseModelProviderWidget get widget => super.widget;

  // When executing the above build method, we pass back the model we get from Provider.
  @override
  Widget build() => widget.build(this, Provider.of<T>(this));
}
