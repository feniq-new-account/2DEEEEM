import 'package:flutter/material.dart';
import 'route_names.dart';
import '../../screens/splash/splash_screen.dart';
import '../../screens/login/login_screen.dart';
import '../../screens/warehouses/warehouses_screen.dart';
import '../../screens/products/products_screen.dart';
import '../../screens/cart/cart_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case RouteNames.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case RouteNames.warehouses:
        return MaterialPageRoute(builder: (_) => const WarehousesScreen());
      case RouteNames.products:
        return MaterialPageRoute(builder: (_) => const ProductsScreen());
      case RouteNames.cart:
        return MaterialPageRoute(builder: (_) => const CartScreen());
      default:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }
}
