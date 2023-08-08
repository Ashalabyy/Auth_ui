import 'package:auth_ui/constants/size_config.dart';
import 'package:auth_ui/constants/widgets/Form_constants/ForgetPassword.dart';
import 'package:auth_ui/constants/widgets/Form_constants/SignUp_with_Google.dart';
import 'package:auth_ui/constants/widgets/Form_constants/dont_or_already_have_account.dart';
import 'package:auth_ui/forgot_password/forgot_password_screen.dart';

import 'package:auth_ui/sign_in/components/sign_in_form.dart';
import 'package:auth_ui/constants/widgets/Form_constants/CanConnectWith.dart';
import 'package:auth_ui/sign_up/sign_up_screen.dart';
import 'package:auth_ui/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

import '../../constants/widgets/custom_route_page.dart';

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
              Text(
                'Welcome Back!',
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(
                height: SizeConfig.heightWith03(),
              ),
              Text(
                'lets login for explore continue',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(
                height: SizeConfig.heightWith03(),
              ),
              const SignInForm(),
              SizedBox(
                height: SizeConfig.heightWith03(),
              ),
              ForgetPassword(
                  forgetPassword: 'Forget Password ?',
                  onpress: () {
                    Navigator.push(
                      context,
                      CustomRoute(
                        child: const ForgotPasswordScreen(),
                      ),
                    );
                  }),
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
                    context,
                    CustomRoute(
                      child: SignUp(),
                    ),
                  );
                },
                text: 'Dont have account ?',
                text2: 'Sign up here',
              ),
              SizedBox(
                height: SizeConfig.heightWith03(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        CustomRoute(
                          child: const HomeScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'continue without Sign in ',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Theme.of(context).secondaryHeaderColor,
                            fontWeight: FontWeight.w900,
                          ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
