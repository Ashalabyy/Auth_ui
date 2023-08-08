import 'package:auth_ui/sign_up/components/body.dart';

class SwitchState with ChangeNotifier {
  bool? isDark;
  SwitchState() {
    isDark = isDark ?? false;
  }
  void isSwitchOn() {
    isDark = true;
    notifyListeners();
  }

  void isSwitchOFF() {
    isDark = false;
    notifyListeners();
  }
}
