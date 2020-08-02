import 'dart:isolate';

import 'package:flutter/cupertino.dart';

class CrossIsolateMsg<T> {
  final SendPort sender;
  final T message;

  CrossIsolateMsg({
    @required this.sender,
    this.message,
  });
}
