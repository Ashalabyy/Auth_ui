import 'package:auth_ui/constants/size_config.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final VoidCallback submitForm;
  final String text;
  const CustomButtom({super.key, required this.text, required this.submitForm});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ElevatedButton(
      onPressed: submitForm,
      child: Center(
        child: Text(
          text,
        ),
      ),
    );
  }
}
