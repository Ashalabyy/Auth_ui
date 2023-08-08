import 'package:auth_ui/forgot_password/components/body.dart';
import 'package:flutter/material.dart';
import '../constants/widgets/custom_app_bar.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const routename = '/ForgtoPasswordScreen';
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          titlewidget: Text(
            'FORGOT PASSWORD',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          isActionButton: true,
          onclick: () {
            Navigator.of(context).pop();
          }, /*  leading: IconButton(
            icon: const Icon(
              Icons.back_hand,
              color: Colors.white,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),*/
        ),
        body: const Body(),
      ),
    );
  }
}
