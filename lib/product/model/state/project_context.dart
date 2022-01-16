import 'package:flutter/material.dart';

class ProductContext extends ChangeNotifier {
  String newUserName = '';

  void chnageName(String name) {
    newUserName = name;
    notifyListeners();
  }
}
