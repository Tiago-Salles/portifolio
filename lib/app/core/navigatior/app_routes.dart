import 'package:flutter/material.dart';
import 'package:portifolio/app/presenter/pages/home/home_page.dart';
import 'package:portifolio/app/presenter/pages/splash/splash_page.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    "/homePage": (context) => const HomePage(),
    "/splashPage": (context) => const SplashPage(),
  };
}
