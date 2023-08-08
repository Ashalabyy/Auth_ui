import 'package:auth_ui/provider/switch.dart';
import 'package:auth_ui/sign_up/sign_up_screen.dart';
import 'package:provider/provider.dart';
import 'app_router.dart';
import './constants/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(
      appRouter: AppRouter(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({required this.appRouter, super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SwitchState(),
      child: Consumer<SwitchState>(
        builder: (context, switchState, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Personal Expenses',
          home: const SignUp(),
          theme: switchState.isDark!
              ? AppThemes.appThemeData[AppTheme.darkTheme]
              : AppThemes.appThemeData[AppTheme.lightTheme],
          onGenerateRoute: appRouter.onGenerateRoute,
        ),
      ),
    );
  }
}
