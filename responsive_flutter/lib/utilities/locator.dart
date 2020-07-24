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
    locator.registerLazySingleton(() => Api());
    locator.registerLazySingleton(() => AuthenticationService());
    locator.registerLazySingleton(() => NavigatorService());
    locator.registerLazySingleton(() => CommentsService());
    locator.registerLazySingleton(() => PostsService());
    locator.registerLazySingleton(() => ShoppingCartService());
    locator.registerLazySingleton(() => UserService());
  }
}
