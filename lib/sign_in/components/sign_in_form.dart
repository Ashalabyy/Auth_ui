import 'package:auth_ui/constants/size_config.dart';
import 'package:auth_ui/constants/widgets/Custom_Suffix_Icon.dart';
import 'package:flutter/material.dart';

import '../../constants/app_theme.dart';
import '../../constants/constants.dart';
import '../../constants/widgets/Form_constants/CustomButtom.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});
  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  void _submitForm() {}
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: SizeConfig.heightWith03(),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: SizeConfig.heightWith03(),
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

//******************************PASSWORDFORMFIELD*********************/
  TextFormField buildPasswordFormField() {
    return TextFormField(
      cursorColor: Theme.of(context).iconTheme.color,
      obscureText: true,
      decoration: defaultInputDecoration.copyWith(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        hintText: passNullError,
        hintStyle: Theme.of(context).textTheme.bodyText1,
        prefixIcon: const CustomSuffixIcon(svgicon: 'assets/icons/Lock.svg'),
        suffixIcon: Icon(
          Icons.visibility,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
    );
  }

//******************************EMAILFORMFIELD*********************/
  TextFormField buildEmailFormField() {
    return TextFormField(
      cursorColor: Theme.of(context).iconTheme.color,
      decoration: defaultInputDecoration.copyWith(
        hintText: emailNullError,
        hintStyle: Theme.of(context).textTheme.bodyText1,
        prefixIcon: const CustomSuffixIcon(svgicon: 'assets/icons/Mail.svg'),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }
}
