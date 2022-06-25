import 'package:flutter/cupertino.dart';
import 'package:portifolio/app/core/services/device_information_service.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late double screenPerimeter;
  @override
  void initState() {
    screenPerimeter = DeviceInformationService.screenPerimeter(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
