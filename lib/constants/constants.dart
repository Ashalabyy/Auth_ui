import 'package:flutter/material.dart';
import 'dimensions.dart' as diementions;

//**************************************Colors***************************************************//
const primaryColor = Color(0xFF001524);
const primaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF2d6a4f), Color(0xFF081c15)],
);
const secondaryColor = Color(0xFFf8f9fa);
const textColor = Color(0xFF757575);

const headingStyle = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);
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

const BASE_URL = '192.168.100.20';
const PRODUCTS_URL = BASE_URL + '/products';

final otpInputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(vertical: 15),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

final defaultInputDecoration = InputDecoration(
  filled: true,
  fillColor: secondaryColor,
  contentPadding: const EdgeInsets.only(left: 10.0),
  hintStyle: const TextStyle(
    fontSize: 14,
  ),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder([double num = 0]) {
  return OutlineInputBorder(
    gapPadding: 4.0,
    borderRadius: BorderRadius.circular(num == 0 ? 15 : num),
    borderSide: const BorderSide(color: secondaryColor),
  );
}
