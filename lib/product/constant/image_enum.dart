import 'package:flutter/material.dart';

enum ImageEnums { door }

extension ImageEnumsExtension on ImageEnums {
  String get _toPath => 'asset/images/ic_$name.png';

  Image get toImage => Image.asset(_toPath);
}
