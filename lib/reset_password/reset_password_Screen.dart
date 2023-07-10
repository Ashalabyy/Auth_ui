import 'components/body.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  static const RouteName = '/ResetPasswordScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Reset Password'),
      ),
      body: Body(),
    );
  }
}
