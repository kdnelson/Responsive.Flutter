import 'package:flutter/material.dart';

import 'base_service.dart';

class NavigatorService extends BaseService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<T> navigateToPage<T>(MaterialPageRoute<T> pageRoute) async {
    if (navigatorKey.currentState == null) {
      return null;
    }
    return navigatorKey.currentState.push(pageRoute);
  }

  Future<T> navigateToPageWithReplacement<T>(
      MaterialPageRoute<T> pageRoute) async {
    if (navigatorKey.currentState == null) {
      return null;
    }
    return navigatorKey.currentState.pushReplacement(pageRoute);
  }

  void pop<T>([T result]) {
    if (navigatorKey.currentState == null) {
      return;
    }
    navigatorKey.currentState.pop(result);
  }
}