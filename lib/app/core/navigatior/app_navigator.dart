import 'package:flutter/cupertino.dart';

class AppNavigator {
  static navigateToNamed(BuildContext context, String routeName) {
    return Navigator.of(context).pushNamed(routeName);
  }
}
