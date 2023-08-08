import 'package:auth_ui/sign_up/components/body.dart';

class CustomRoute extends PageRouteBuilder {
  final Widget child;

  CustomRoute({
    required this.child,
  }) : super(
          transitionDuration: const Duration(milliseconds: 500),
          pageBuilder: (context, animation, secondaryAnimation) => child,
        );

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      ScaleTransition(scale: animation, child: child);
}
