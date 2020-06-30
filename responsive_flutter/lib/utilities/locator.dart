import 'package:get_it/get_it.dart';
import 'package:responsive_flutter/services/navigator_service.dart';

GetIt locator = GetIt.instance;

class LocatorInjector {
  static Future<void> setupLocator() async {
    locator.registerLazySingleton(() => NavigatorService());
  }
}
