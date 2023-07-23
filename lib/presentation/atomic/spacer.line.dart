import 'package:flutter/material.dart';

enum _SpacerLineType { vertical, horizontal }

class SpacerLine extends StatelessWidget {
  final double spacing;
  final _SpacerLineType _type;

  const SpacerLine.horizontal({Key? key, this.spacing = 4})
      : _type = _SpacerLineType.horizontal,
        super(key: key);

  const SpacerLine.vertical({Key? key, this.spacing = 4})
      : _type = _SpacerLineType.vertical,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return switch (_type) {
      _SpacerLineType.horizontal => SizedBox(width: spacing),
      _ => SizedBox(height: spacing)
    };
  }
}
