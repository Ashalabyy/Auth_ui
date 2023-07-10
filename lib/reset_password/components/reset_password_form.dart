import 'package:auth_ui/constants/widgets/Custom_SuffixIcon.dart';
import 'package:flutter/material.dart';
import '../../constants/dimensions.dart' as diementions;
import '../../constants/constants.dart' as constants;
import '../../constants/widgets/Form_constants/CustomButtom.dart';

class ResetPasswordForm extends StatefulWidget {
  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  void _submitForm() {
    Navigator.of(context).pushNamed('');
  }

  @override
  Widget build(BuildContext context) {
    diementions.init(context);
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildPasswordFormField(),
          SizedBox(
            height: diementions.heightWith05(diementions.screenHeight!),
          ),
          buildConfirmPasswordFormField(),
          SizedBox(
            height: diementions.heightWith05(diementions.screenHeight!),
          ),
          CustomButtom(
            text: 'Create',
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
}
