import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart' as constants;

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
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w500,
              color: constants.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
