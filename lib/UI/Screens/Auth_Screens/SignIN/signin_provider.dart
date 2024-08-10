import 'package:door_fashion/Core/Models/baseveiwmodel.dart';

class SigninProvider extends BaseViewModal {
  bool isVisiblePassword = false;
  visiblePassword() {
    isVisiblePassword = !isVisiblePassword;
    notifyListeners();
  }
}
