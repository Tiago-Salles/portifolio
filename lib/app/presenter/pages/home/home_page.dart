import 'package:flutter/cupertino.dart';
import 'package:portifolio/app/core/services/device_information_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
