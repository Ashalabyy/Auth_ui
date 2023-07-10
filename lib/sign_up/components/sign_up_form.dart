import 'package:auth_ui/constants/widgets/Custom_SuffixIcon.dart';
import 'package:flutter/material.dart';
import '../../constants/dimensions.dart' as diementions;
import '../../constants/constants.dart' as constants;
import '../../constants/widgets/Form_constants/CustomButtom.dart';

class SignUpForm extends StatefulWidget {
  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  void _submitForm() async {}
  @override
  Widget build(BuildContext context) {
    diementions.init(context);
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildUserNameFormField(),
          SizedBox(
            height: diementions.heightWith05(diementions.screenHeight!),
          ),
          buildEmailFormField(),
          SizedBox(
            height: diementions.heightWith05(diementions.screenHeight!),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: diementions.heightWith05(diementions.screenHeight!),
          ),
          buildConfirmPasswordFormField(),
          SizedBox(
            height: diementions.heightWith05(diementions.screenHeight!),
          ),
          CustomButtom(
            text: 'Sign up',
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

  /******************************ConfirmPASSWORDFORMFIELD*********************/
  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      obscureText: true,
      decoration: constants.defaultInputDecoration.copyWith(
        hintText: 'Confirm your password',
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

/******************************EMAILFORMFIELD*********************/
  TextFormField buildUserNameFormField() {
    return TextFormField(
      decoration: constants.defaultInputDecoration.copyWith(
        hintText: 'Enter your full name',
        prefixIcon: CustomSuffixIcon(svgicon: 'assets/icons/User.svg'),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }
}
