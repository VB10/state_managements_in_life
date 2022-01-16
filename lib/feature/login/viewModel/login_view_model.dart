import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  bool isCheckBoxOkay = false;
  String? _inputText;

  bool isLoading = false;

  void checkBoxChange(bool value) {
    isCheckBoxOkay = value;
    notifyListeners();
  }

  void _changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  Future<bool> controlTextValue() async {
    _changeLoading();
    await Future.delayed(const Duration(seconds: 1));
    _changeLoading();

    return _inputText != null;
  }
}
