import 'package:get_it/get_it.dart';
import 'package:responsive_flutter/services/api.dart';
import 'package:responsive_flutter/services/authentication_service.dart';
import 'package:responsive_flutter/services/comments_service.dart';
import 'package:responsive_flutter/services/navigator_service.dart';
import 'package:responsive_flutter/services/posts_service.dart';
import 'package:responsive_flutter/services/user_service.dart';
import 'package:responsive_flutter/services/shopping_cart_service.dart';

GetIt locator = GetIt.instance;

class LocatorInjector {
  static Future<void> setupLocator() async {
    locator.registerLazySingleton(() => NavigatorService());
    locator.registerLazySingleton(() => AuthenticationService());
    locator.registerLazySingleton(() => UserService());
    locator.registerLazySingleton(() => PostsService());
    locator.registerLazySingleton(() => CommentsService());
    locator.registerLazySingleton(() => Api());
    locator.registerLazySingleton(() => ShoppingCartService());
  }
}
