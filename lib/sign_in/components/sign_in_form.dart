import 'package:auth_ui/constants/widgets/Custom_SuffixIcon.dart';
import 'package:flutter/material.dart';
import '../../constants/dimensions.dart' as diementions;
import '../../constants/constants.dart' as constants;
import '../../constants/widgets/Form_constants/CustomButtom.dart';

class SignInForm extends StatefulWidget {
  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  void _submitForm() {}
  @override
  Widget build(BuildContext context) {
    diementions.init(context);
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: diementions.heightWith05(diementions.screenHeight!),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: diementions.heightWith05(diementions.screenHeight!),
          ),
          CustomButtom(
            text: 'Sign in',
            submitForm: () {
              _submitForm();
            },
          ),
        ],
      ),
    );
  }

/******************************PASSWORDFORMFIELD*********************/
  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      decoration: constants.defaultInputDecoration.copyWith(
        hintText: 'Enter your password',
        prefixIcon: CustomSuffixIcon(svgicon: 'assets/icons/Lock.svg'),
        suffixIcon: Icon(Icons.visibility),
      ),
    );
  }

/******************************EMAILFORMFIELD*********************/
  TextFormField buildEmailFormField() {
    return TextFormField(
      decoration: constants.defaultInputDecoration.copyWith(
        hintText: 'Enter your email',
        prefixIcon: CustomSuffixIcon(svgicon: 'assets/icons/Mail.svg'),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }
}
