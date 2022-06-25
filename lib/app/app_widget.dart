import 'package:flutter/material.dart';
import 'package:portifolio/app/core/navigatior/app_routes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: AppRoutes.routes,
      initialRoute: "splashPage",
    );
  }
}
