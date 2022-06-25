import 'package:flutter/material.dart';
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
    return BodyHomePage(
      screenPermiter: screenPerimeter,
    );
  }
}

class BodyHomePage extends StatelessWidget {
  final double screenPermiter;
  const BodyHomePage({Key? key, required this.screenPermiter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: screenPermiter * 0.01),
        Stack(
          children: [
            Row(
              children: [
                SizedBox(width: screenPermiter * 0.01),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Tiago Salles",
                        style: TextStyle(
                          fontSize: screenPermiter * 0.01,
                        ),
                      ),
                      Text(
                        "Flutter Developer",
                        style: TextStyle(
                          fontSize: screenPermiter * 0.008,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
