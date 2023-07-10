import 'package:auth_ui/password_updated/password_updated_Screen.dart';
import 'package:auth_ui/reset_password/reset_password_Screen.dart';
import 'package:auth_ui/sign_up/sign_up_screen.dart';
import 'sign_in/sign_in_screen.dart';
import 'package:auth_ui/constants/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      home: PasswordUpdatedScreen(),
      routes: {
        PasswordUpdatedScreen.RouteName: (context) => PasswordUpdatedScreen(),
        SignIn.RouteName: (context) => SignIn(),
        SignUp.RouteName: (context) => SignUp(),
        ResetPasswordScreen.RouteName: (context) => ResetPasswordScreen(),
      },
    );
  }
}
