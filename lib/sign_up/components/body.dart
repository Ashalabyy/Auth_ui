import 'package:auth_ui/constants/dimensions.dart' as diementions;
import 'package:auth_ui/constants/widgets/Form_constants/SignUp_with_Google.dart';
import 'package:auth_ui/constants/widgets/Form_constants/dont_or_already_have_account.dart';
import 'package:auth_ui/constants/widgets/Form_constants/CanConnectWith.dart';
import 'package:auth_ui/sign_in/sign_in_screen.dart';
import 'package:auth_ui/sign_up/components/sign_up_form.dart';
import 'package:flutter/material.dart';
import '../../constants/constants.dart' as constants;

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    diementions.init(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Let\'s Get Started',
                style: constants.headingStyle,
              ),
              SizedBox(
                height: diementions.heightWith05(diementions.screenHeight!),
              ),
              const Text('create an account to get all features'),
              SizedBox(
                height: diementions.heightWith05(diementions.screenHeight!),
              ),
              SignUpForm(),
              SizedBox(
                height: diementions.heightWith05(diementions.screenHeight!),
              ),
              CanConnectWith(),
              SizedBox(
                height: diementions.heightWith05(diementions.screenHeight!),
              ),
              SignUpWithGoogle(),
              SizedBox(
                height: diementions.heightWith05(diementions.screenHeight!),
              ),
              DontorHaveAcc(
                onpress: () {
                  Navigator.of(context).pushReplacementNamed(SignIn.RouteName);
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
