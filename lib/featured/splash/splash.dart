import 'package:doc_doc/core/helper/extentions.dart';
import 'package:doc_doc/core/routing/routes.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      // ignore: use_build_context_synchronously
      context.pushNamed(Routes.onBordingScreen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset("assets/images/SplashScreen.png"),
      ),
    );
  }
}
