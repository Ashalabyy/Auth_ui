import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  final VoidCallback onpress;
  final String forgetPassword;
  const ForgetPassword(
      {super.key, required this.onpress, required this.forgetPassword});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: onpress,
          child: Text(
            forgetPassword,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w800,
                ),
          ),
        ),
      ],
    );
  }
}
