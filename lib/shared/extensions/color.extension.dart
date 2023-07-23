import 'package:flutter/widgets.dart';

extension ColorExtension on int {
  Color get color {
    return Color(this);
  }
}
