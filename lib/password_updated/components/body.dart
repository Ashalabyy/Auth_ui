import 'package:auth_ui/constants/dimensions.dart' as diementions;
import 'package:auth_ui/constants/widgets/Form_constants/CustomButtom.dart';
import 'package:auth_ui/reset_password/components/reset_password_form.dart';
import 'package:auth_ui/sign_in/components/sign_in_form.dart';
import 'package:auth_ui/sign_in/sign_in_screen.dart';
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
              Image(
                image: AssetImage(
                  'assets/images/verification.jpg',
                ),
                fit: BoxFit.cover,
              ),
              const Text(
                'Password Updated',
                style: constants.headingStyle,
              ),
              SizedBox(
                height: diementions.heightWith05(diementions.screenHeight!),
              ),
              const Text('your password has been updated'),
              SizedBox(
                height: diementions.heightWith05(diementions.screenHeight!),
              ),
              CustomButtom(
                  text: 'Sign in',
                  submitForm: () {
                    Navigator.of(context)
                        .pushReplacementNamed(SignIn.RouteName);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
