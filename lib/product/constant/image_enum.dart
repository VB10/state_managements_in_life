import 'package:flutter/material.dart';

enum ImageEnums { door, camp_alt, camp_alt2 }

extension ImageEnumsExtension on ImageEnums {
  String get _toPath => 'asset/images/ic_$name.png';

  String get toPathFeed => 'asset/images/feed/$name.png';

  Image get toImage => Image.asset(_toPath);
}
