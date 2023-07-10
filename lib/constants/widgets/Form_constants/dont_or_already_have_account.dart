import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DontorHaveAcc extends StatelessWidget {
  final String text;
  final VoidCallback onpress;
  final String text2;
  const DontorHaveAcc(
      {super.key,
      required this.text,
      required this.text2,
      required this.onpress});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: onpress,
          child: Text(
            text2,
            style: GoogleFonts.nunito(
                color: Colors.black, fontWeight: FontWeight.w800),
          ),
        ),
      ],
    );
  }
}
