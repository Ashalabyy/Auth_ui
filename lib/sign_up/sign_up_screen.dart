import 'package:auth_ui/sign_up/components/body.dart';

import '../constants/dimensions.dart' as dieminstions;
import '../constants/constants.dart' as constants;
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  static const RouteName = '/SignUpScreen';
  @override
  Widget build(BuildContext context) {
    dieminstions.init(context);
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              color: constants.primaryColor,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                color: Colors.white,
              ),
              height: dieminstions.screenHeight! * 0.9,
              child: Body(),
            ),
          ),
        ],
      ),
    );
  }
}
