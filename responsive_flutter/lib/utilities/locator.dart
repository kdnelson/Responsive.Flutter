import 'package:get_it/get_it.dart';
import 'package:responsive_flutter/services/api.dart';
import 'package:responsive_flutter/services/authentication_service.dart';
import 'package:responsive_flutter/services/navigator_service.dart';
import 'package:responsive_flutter/services/posts_service.dart';

GetIt locator = GetIt.instance;

class LocatorInjector {
  static Future<void> setupLocator() async {
    locator.registerLazySingleton(() => NavigatorService());
    locator.registerLazySingleton(() => AuthenticationService());
    locator.registerLazySingleton(() => PostsService());
    locator.registerLazySingleton(() => Api());
  }
}
