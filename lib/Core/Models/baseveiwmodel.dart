import 'package:door_fashion/Core/Enums/veiw_state.dart';
import 'package:flutter/material.dart';

class BaseViewModal extends ChangeNotifier {
  ViewState _state = ViewState.idle;
  ViewState get state => _state;

  void setState(ViewState state) {
    _state = state;
    notifyListeners();
  }
}
