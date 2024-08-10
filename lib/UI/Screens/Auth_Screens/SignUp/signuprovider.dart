import 'package:door_fashion/Core/Models/baseveiwmodel.dart';

class SignUpProvider extends BaseViewModal {
  bool isVisiblePassword = true;
  SignUpProvider();

  ///
  /// Visible Password =================================>>>
  ///
  visiblePassword() {
    // print("Password state : $isVisiblePassword");
    isVisiblePassword = !isVisiblePassword;
    notifyListeners();
    //print("Password final state : $isVisiblePassword");
  }
}
