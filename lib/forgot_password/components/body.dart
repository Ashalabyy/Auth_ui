import 'package:auth_ui/forgot_password/components/forgot_password_form.dart';
import 'package:flutter/material.dart';

import '../../constants/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                ' Enter Your Email',
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(
                height: SizeConfig.heightWith03(),
              ),
              const ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}
