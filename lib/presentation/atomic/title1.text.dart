import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class TextTitle1 extends StatelessWidget {
  final String data;
  final TextStyle? style;
  final TextAlign? textAlign;

  const TextTitle1(this.data, {super.key, this.style, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      data,
      style: style,
      textScaleFactor: TextDimens.xl2,
      textAlign: textAlign,
    );
  }
}
