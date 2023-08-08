import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

enum AppTheme {
  lightTheme,
  darkTheme,
}

class AppThemes {
  static final appThemeData = {
    AppTheme.lightTheme: theme(),
    AppTheme.darkTheme: darktheme(),
  };
}

// LightTheme
ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: primaryLightColor,
    primarySwatch: Colors.grey,
    secondaryHeaderColor: primaryColor,
    fontFamily: GoogleFonts.nunito().fontFamily,
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    primaryColor: primaryColor,
    iconTheme: const IconThemeData(color: primaryColor),
    elevatedButtonTheme: elevateButtom(),
  );
}

final otpInputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(vertical: 15),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

final defaultInputDecoration = InputDecoration(
  filled: true,
  contentPadding: const EdgeInsets.only(left: 10.0),
  hintStyle: const TextStyle(
    fontSize: 14,
  ),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

// Text Theme
TextTheme textTheme() {
  return const TextTheme(
    subtitle1: TextStyle(
      color: primaryColor,
    ),
    // This Style for small Title **************
    bodyText1: TextStyle(
      fontSize: 13,
      color: textColor,
      fontWeight: FontWeight.w700,
    ),
    bodyText2: TextStyle(
      fontSize: 15,
      color: primaryLightColor,
      fontWeight: FontWeight.w900,
    ),
    // This Style for larege Title **************
    headline1: TextStyle(
      color: primaryColor,
      fontSize: 28,
      fontWeight: FontWeight.w900,
    ),
  );
}

// ElevatedButton Theme
ElevatedButtonThemeData elevateButtom() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
      foregroundColor: lightColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      minimumSize: const Size(double.infinity, 40),
      elevation: 0,
    ),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    titleTextStyle: TextStyle(color: primaryColor, fontSize: 16),
    color: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    iconTheme: IconThemeData(color: primaryColor),
    textTheme: TextTheme(
      headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
    ),
  );
}

//Dark Theme
ThemeData darktheme() {
  return ThemeData(
    scaffoldBackgroundColor: darkPrimaryColor,
    secondaryHeaderColor: darkSecondryColor,
    primarySwatch: Colors.amber,
    fontFamily: GoogleFonts.nunito().fontFamily,
    textTheme: darktextTheme(),
    primaryColor: darkPrimaryColor,
    iconTheme: const IconThemeData(color: darkTextColor),
    elevatedButtonTheme: darkelevateButtom(),
  );
}

// Text Theme
TextTheme darktextTheme() {
  return const TextTheme(
    subtitle1: TextStyle(
      color: darkTextColor,
    ),
    // This Style for small Title **************
    bodyText1: TextStyle(
      fontSize: 13,
      color: darkTextColor,
      fontWeight: FontWeight.w700,
    ),
    bodyText2: TextStyle(
      fontSize: 15,
      color: darkPrimaryColor,
      fontWeight: FontWeight.w700,
    ),
    // This Style for larege Title **************
    headline1: TextStyle(
      color: darkTextColor,
      fontSize: 28,
      fontWeight: FontWeight.w900,
    ),
  );
}

// ElevatedButton Theme
ElevatedButtonThemeData darkelevateButtom() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: darkSecondryColor,
      foregroundColor: darkPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      minimumSize: const Size(double.infinity, 40),
      elevation: 0,
    ),
  );
}
