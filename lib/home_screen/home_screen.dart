import 'package:auth_ui/constants/widgets/custom_app_bar.dart';
import 'package:auth_ui/home_screen/components/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/SwitchScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: "APP THEME",
        ),
        body: Body(),
      ),
    );
  }
}
