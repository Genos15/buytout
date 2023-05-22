import 'package:buytout/shared/index.dart';
import 'package:flutter/cupertino.dart';

class SubmitButton extends StatelessWidget {
  final double height;
  final double width;
  final int color;
  final double minSize;
  final double borderRadius;
  final String text;
  final void Function()? onPressed;

  const SubmitButton({
    Key? key,
    this.height = LayoutDimens.s48,
    this.width = double.infinity,
    this.color = CommonColors.amber300,
    this.minSize = LayoutDimens.s32,
    this.borderRadius = LayoutDimens.s32,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: CupertinoButton(
        color: color.asColor,
        onPressed: onPressed,
        minSize: minSize,
        borderRadius: BorderRadius.circular(borderRadius),
        child: Text(text).black,
      ),
    );
  }
}
