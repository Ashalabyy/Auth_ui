import 'package:flutter/material.dart';

class DontorHaveAcc extends StatelessWidget {
  final String text;
  final VoidCallback onpress;
  final String text2;
  const DontorHaveAcc({
    super.key,
    required this.text,
    required this.text2,
    required this.onpress,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: onpress,
          child: Text(
            text2,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontWeight: FontWeight.w900,
                ),
          ),
        ),
      ],
    );
  }
}
