import 'package:flutter/cupertino.dart';

class DeviceInformationService {
  static double screenPerimeter(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenPerimeter = ((screenWidth * 2) + (screenHeight * 2));
    return screenPerimeter;
  }
}
