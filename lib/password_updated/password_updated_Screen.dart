import 'package:flutter/material.dart';
import 'components/body.dart';

class PasswordUpdatedScreen extends StatelessWidget {
  static const RouteName = '/PasswordUpdatedScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('ResetPassword'),
      ),
      body: Body(),
    );
  }
}
