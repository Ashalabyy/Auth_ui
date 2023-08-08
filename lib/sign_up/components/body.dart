export 'package:auth_ui/constants/constants.dart';
export 'package:flutter/material.dart';
import 'package:auth_ui/sign_up/components/sign_up_form.dart';

import '../../constants/widgets/Form_constants/CanConnectWith.dart';
import '../../constants/widgets/Form_constants/SignUp_with_Google.dart';
import '../../constants/widgets/custom_route_page.dart';
import 'package:flutter/material.dart';
import 'package:auth_ui/constants/size_config.dart';
import 'package:auth_ui/constants/widgets/Form_constants/dont_or_already_have_account.dart';

import '../../sign_in/sign_in_screen.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 44),
              Text(
                'Let\'s Get Started',
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(
                height: SizeConfig.heightWith03(),
              ),
              Text(
                'create an account to get all features',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(
                height: SizeConfig.heightWith03(),
              ),
              const SignUpForm(),
              SizedBox(
                height: SizeConfig.heightWith03(),
              ),
              const CanConnectWith(),
              SizedBox(
                height: SizeConfig.heightWith03(),
              ),
              const SignUpWithGoogle(),
              SizedBox(
                height: SizeConfig.heightWith03(),
              ),
              DontorHaveAcc(
                onpress: () {
                  Navigator.pushReplacement(
                      context, CustomRoute(child: const SignIn()));
                },
                text: 'Already have account ?',
                text2: 'Sign in here',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
