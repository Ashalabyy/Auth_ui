import 'package:provider/provider.dart';
import '../../constants/constants.dart';
import '../../constants/app_theme.dart';
import '../../constants/size_config.dart';
import '../../constants/widgets/Custom_Suffix_Icon.dart';
import '../../constants/widgets/Form_constants/CustomButtom.dart';
import '../../provider/switch.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});
  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  void _submitForm() async {}
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildUserNameFormField(),
          SizedBox(
            height: SizeConfig.heightWith03(),
          ),
          buildEmailFormField(),
          SizedBox(
            height: SizeConfig.heightWith03(),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: SizeConfig.heightWith03(),
          ),
          buildConfirmPasswordFormField(),
          SizedBox(
            height: SizeConfig.heightWith03(),
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

//******************************PASSWORDFORMFIELD*********************
  TextFormField buildPasswordFormField() {
    return TextFormField(
      cursorColor: Theme.of(context).iconTheme.color,
      obscureText: true,
      decoration: defaultInputDecoration.copyWith(
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

  //******************************ConfirmPASSWORDFORMFIELD*********************
  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      cursorColor: Theme.of(context).iconTheme.color,
      obscureText: true,
      decoration: defaultInputDecoration.copyWith(
        hintText: 'Confirm your password',
        hintStyle: Theme.of(context).textTheme.bodyText1,
        prefixIcon: const CustomSuffixIcon(svgicon: 'assets/icons/Lock.svg'),
        suffixIcon: Icon(
          Icons.visibility,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
    );
  }

  //******************************EMAILFORMFIELD*********************
  TextFormField buildEmailFormField() {
    return TextFormField(
      cursorColor: Theme.of(context).iconTheme.color,
      decoration: defaultInputDecoration.copyWith(
        hintText: emailNullError,
        hintStyle: Theme.of(context).textTheme.bodyText1,
        prefixIcon: const CustomSuffixIcon(
          svgicon: 'assets/icons/Mail.svg',
        ),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }

//******************************EMAILFORMFIELD*********************
  TextFormField buildUserNameFormField() {
    return TextFormField(
      cursorColor: Theme.of(context).iconTheme.color,
      decoration: defaultInputDecoration.copyWith(
        hintText: 'Enter your full name',
        hintStyle: Theme.of(context).textTheme.bodyText1,
        prefixIcon: const CustomSuffixIcon(svgicon: 'assets/icons/User.svg'),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }
}
