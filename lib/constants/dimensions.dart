import 'package:flutter/material.dart';

double? screenHeight;
double? screenwidth;
Orientation? oreintations;

void init(BuildContext context) {
  screenHeight = MediaQuery.of(context).size.height;
  screenwidth = MediaQuery.of(context).size.width;
  oreintations = MediaQuery.of(context).orientation;
}

double heightWith05(double inputHeight) {
  return inputHeight * 0.03;
}
