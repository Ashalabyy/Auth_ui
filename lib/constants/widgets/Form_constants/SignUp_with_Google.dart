import 'package:flutter/material.dart';
import '../../dimensions.dart' as diementions;
import 'package:flutter_svg/flutter_svg.dart';

class SignUpWithGoogle extends StatelessWidget {
  const SignUpWithGoogle({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.all(12)),
        elevation: MaterialStateProperty.all<double>(0),
        backgroundColor: MaterialStateProperty.all<Color>(
          Colors.white,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: const BorderSide(color: Colors.grey),
          ),
        ),
      ),
      child: SizedBox(
        height: diementions.screenHeight! * 0.05,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/google.svg'),
            const SizedBox(
              width: 5,
            ),
            const Text(
              'Sign Up with Google',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
