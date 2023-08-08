import 'package:flutter/material.dart';
import 'package:auth_ui/constants/size_config.dart';

class CanConnectWith extends StatelessWidget {
  const CanConnectWith({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 1,
          width: SizeConfig.screenWidth! * 0.2,
          color: Colors.grey,
        ),
        Text(
          'you can connect with',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontWeight: FontWeight.w400,
              ),
        ),
        Container(
          height: 1,
          width: SizeConfig.screenWidth! * 0.2,
          color: Colors.grey,
        ),
      ],
    );
  }
}
