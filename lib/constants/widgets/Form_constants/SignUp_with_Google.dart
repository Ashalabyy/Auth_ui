import 'package:auth_ui/constants/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpWithGoogle extends StatelessWidget {
  const SignUpWithGoogle({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: SizedBox(
        height: SizeConfig.heightWith03(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/google.svg'),
            const SizedBox(
              width: 5,
            ),
            Text(
              'Sign Up with Google',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
