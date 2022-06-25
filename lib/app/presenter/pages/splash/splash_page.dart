import 'package:flutter/material.dart';
import 'package:portifolio/app/core/services/device_information_service.dart';
import 'package:portifolio/app/presenter/presenter_resources/animations/package_animations/package_animations.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late double screenPerimeter;

  @override
  Widget build(BuildContext context) {
    screenPerimeter = DeviceInformationService.screenPerimeter(context);
    return Scaffold(
      body: BodySplashPage(
        screenPermiter: screenPerimeter,
      ),
    );
  }
}

class BodySplashPage extends StatefulWidget {
  final double screenPermiter;
  const BodySplashPage({Key? key, required this.screenPermiter})
      : super(key: key);

  @override
  State<BodySplashPage> createState() => _BodySplashPageState();
}

class _BodySplashPageState extends State<BodySplashPage> {
  double opacity = 0;

  @override
  void initState() {
    showName();
    super.initState();
  }

  void showName() async {
    await Future.delayed(const Duration(seconds: 2)).then((value) {
      setState(() {
        opacity = 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: widget.screenPermiter * 0.15,
                child: PackageAnimations.splashAnimation,
              ),
              SizedBox(height: widget.screenPermiter * 0.004),
              SizedBox(
                child: AnimatedOpacity(
                  opacity: opacity,
                  duration: const Duration(seconds: 2),
                  child: Text(
                    "Tiago Salles",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w300,
                      fontSize: widget.screenPermiter * 0.01,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
