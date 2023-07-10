import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../dimensions.dart' as diementions;

class CustomButtom extends StatelessWidget {
  final VoidCallback submitForm;
  final String text;
  const CustomButtom({super.key, required this.text, required this.submitForm});

  @override
  Widget build(BuildContext context) {
    diementions.init(context);
    return MaterialButton(
      height: diementions.screenHeight! * 0.05,
      onPressed: submitForm,
      color: primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        width: diementions.screenwidth! * 0.8,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: primaryLightColor),
          ),
        ),
      ),
    );
  }
}
