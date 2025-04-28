import 'package:doc_doc/core/routing/routes.dart';
import 'package:doc_doc/featured/onBoarding/onboardong_screen.dart';
import 'package:doc_doc/featured/splash/splash.dart';
import 'package:doc_doc/featured/ui/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppRouter {
  Route genrateRoute(RouteSettings settings) {
    //this argument to be passed in eny screen like this  (argument as className)
    final argument = settings.arguments;
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const Splash());
      case Routes.onBordingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
