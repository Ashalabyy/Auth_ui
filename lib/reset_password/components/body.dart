import 'package:auth_ui/constants/dimensions.dart' as diementions;
import 'package:auth_ui/reset_password/components/reset_password_form.dart';
import 'package:auth_ui/sign_in/components/sign_in_form.dart';
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Create new password',
                style: constants.headingStyle,
              ),
              SizedBox(
                height: diementions.heightWith05(diementions.screenHeight!),
              ),
              const Text('your new password must be different from'),
              SizedBox(
                height: 5,
              ),
              const Text('previous used passwords'),
              SizedBox(
                height: diementions.heightWith05(diementions.screenHeight!),
              ),
              ResetPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}
