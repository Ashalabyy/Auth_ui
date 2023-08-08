import 'package:flutter/material.dart';
import '../../constants/app_theme.dart';
import '../../constants/constants.dart';
import '../../constants/size_config.dart';
import '../../constants/widgets/Custom_Suffix_Icon.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  void _submitForm() {}
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Form(
      key: _formKey,
      child: Column(children: [
        buildEmailFormField(),
        SizedBox(
          height: SizeConfig.heightWith03(),
        ),
      ]),
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
