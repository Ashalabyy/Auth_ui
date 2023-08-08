import 'package:auth_ui/constants/widgets/custom_app_bar.dart';

import '../constants/size_config.dart';

import 'package:flutter/material.dart';
import 'components/body.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});
  static const routeName = '/SiginInScreen';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          titlewidget: Text(
            'SIGN IN',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        body: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          height: SizeConfig.screenHeight! * 0.9,
          child: const Body(),
        ),
      ),
    );
  }
}
