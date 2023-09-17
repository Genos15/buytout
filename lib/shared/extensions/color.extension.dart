import 'package:flutter/widgets.dart';

extension ColorExtension on int {
  Color get toColor {
    return Color(this);
  }
}
