import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class TextSubtitle extends StatelessWidget {
  final String data;
  final TextStyle? style;
  final TextAlign? textAlign;

  const TextSubtitle(
    this.data, {
    super.key,
    this.style,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      data,
      style: style,
      textScaleFactor: TextDimens.sm,
      textAlign: textAlign,
    );
  }
}
