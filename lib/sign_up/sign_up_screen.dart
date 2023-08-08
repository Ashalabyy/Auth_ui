import 'package:auth_ui/constants/widgets/custom_app_bar.dart';
import 'package:auth_ui/sign_up/components/body.dart';

import 'package:flutter/material.dart';

import '../constants/size_config.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  static const routeName = '/SignUpScreen';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: primaryColor,
        appBar: const CustomAppBar(
          title: 'SIGN UP',
        ),
        body: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          height: SizeConfig.screenHeight!,
          child: const Center(
            child: Body(),
          ),
        ),
      ),
    );
  }
}
