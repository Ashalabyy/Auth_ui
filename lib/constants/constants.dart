import 'package:flutter/material.dart';

//**************************************LighTColors
const primaryColor = Color(0xFF000814);
const primaryLightColor = Color(0xFFf8f9fa);
const secondaryColor = Color(0xFF757575);
const lightColor = Color(0xFFf6fff8);
const textColor = Color(0xFF757575);
//**************************************DarkTColors
const darkPrimaryColor = Color(0xFF1d4e89);
const darkSecondryColor = Color(0xFFf79256);
const darkTextColor = Color(0XFF7dcfb6);

//******************************validation Erorr*********************************************//
const String emailNullError = "Please Enter your email";
const String invalidEmailError = "Please Enter Valid Email";
const String passNullError = "Please Enter your password";
const String shortPassError = "Password is too short";
const String matchPassError = "Passwords don't match";
const String namelNullError = "Please Enter your name";
const String phoneNumberNullError = "Please Enter your phone number";
const String addressNullError = "Please Enter your address";
//********************************Network********************************************************//

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    gapPadding: 4.0,
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(color: Color(0xFFf6fff8)),
  );
}
