import 'package:auth_ui/provider/switch.dart';
import 'package:auth_ui/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants/widgets/custom_route_page.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Change Color',
            style: Theme.of(context).textTheme.headline1,
          ),
          Consumer<SwitchState>(
            builder: (context, switchState, child) => Switch(
              value: switchState.isDark!,
              onChanged: ((value) {
                value ? switchState.isSwitchOn() : switchState.isSwitchOFF();
              }),
            ),
          ),
          Consumer<SwitchState>(
            builder: (context, switchState, child) => ElevatedButton(
              onPressed: () {
                if (switchState.isDark!) {
                  Navigator.pushReplacement(
                    context,
                    CustomRoute(
                      child: const SignIn(),
                    ),
                  );
                }
                return;
              },
              child: Text(
                  switchState.isDark! ? 'Go Back' : 'Switch on The Switch'),
            ),
          ),
        ],
      ),
    );
  }
}
