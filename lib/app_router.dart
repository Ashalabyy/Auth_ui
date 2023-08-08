import 'package:auth_ui/forgot_password/forgot_password_screen.dart';
import 'package:auth_ui/sign_in/sign_in_screen.dart';
import 'package:auth_ui/sign_up/sign_up_screen.dart';
import 'package:auth_ui/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case SignUp.routeName:
        return MaterialPageRoute(
          builder: (_) => const SignUp(),
        );
      case SignIn.routeName:
        return MaterialPageRoute(
          builder: (_) => const SignIn(),
        );
      case ForgotPasswordScreen.routename:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordScreen(),
        );
      case HomeScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        return null;
    }
  }
}
