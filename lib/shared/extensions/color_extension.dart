import 'package:flutter/widgets.dart';

extension ColorExtension on int {
  Color get asColor {
    return Color(this);
  }
}
