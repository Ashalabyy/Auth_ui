import 'package:auth_ui/constants/dimensions.dart' as diementions;
import 'package:auth_ui/constants/widgets/Form_constants/ForgetPassword.dart';
import 'package:auth_ui/constants/widgets/Form_constants/SignUp_with_Google.dart';
import 'package:auth_ui/constants/widgets/Form_constants/dont_or_already_have_account.dart';
import 'package:auth_ui/reset_password/reset_password_Screen.dart';
import 'package:auth_ui/sign_in/components/sign_in_form.dart';
import 'package:auth_ui/constants/widgets/Form_constants/CanConnectWith.dart';
import 'package:auth_ui/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                'welcome Back!',
                style: constants.headingStyle,
              ),
              SizedBox(
                height: diementions.heightWith05(diementions.screenHeight!),
              ),
              const Text('lets login for explore continue'),
              SizedBox(
                height: diementions.heightWith05(diementions.screenHeight!),
              ),
              SignInForm(),
              SizedBox(
                height: diementions.heightWith05(diementions.screenHeight!),
              ),
              ForgetPassword(
                forgetPassword: 'Forget Password ?',
                onpress: () {
                  Navigator.of(context)
                      .pushNamed(ResetPasswordScreen.RouteName);
                },
              ),
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
                  Navigator.of(context).pushReplacementNamed(SignUp.RouteName);
                },
                text: 'Dont have account ?',
                text2: 'Sign up here',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
