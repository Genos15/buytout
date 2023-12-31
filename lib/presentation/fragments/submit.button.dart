import 'package:buytout/shared/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubmitButton extends StatefulWidget {
  final double height;
  final double width;
  final int bgColor;
  final double minSize;
  final double borderRadius;
  final String text;
  final VoidCallback? onPressed;

  const SubmitButton({
    Key? key,
    this.height = LayoutDimens.s48,
    this.width = double.infinity,
    this.bgColor = CommonColors.teal100,
    this.minSize = LayoutDimens.s32,
    this.borderRadius = LayoutDimens.s32,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  State<SubmitButton> createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  late bool isLoading;

  @override
  void initState() {
    isLoading = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: CupertinoButton(
        color: Color(widget.bgColor),
        onPressed: isLoading
            ? null
            : () async {
                try {
                  setState(() => isLoading = true);
                  await Future(() => widget.onPressed?.call());
                } finally {
                  setState(() => isLoading = false);
                }
              },
        minSize: widget.minSize,
        borderRadius: BorderRadius.circular(widget.borderRadius),
        child: isLoading
            ? const CircularProgressIndicator.adaptive()
            : AutoSizeText(
                widget.text,
                maxLines: 1,
                style: AppTextStyles.normalOf(context),
              ),
      ),
    );
  }
}

class TextSubmitButton extends StatefulWidget {
  final String text;
  final VoidCallback? onPressed;

  const TextSubmitButton({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  State<TextSubmitButton> createState() => _TextSubmitButtonState();
}

class _TextSubmitButtonState extends State<TextSubmitButton> {
  late bool isLoading;

  @override
  void initState() {
    isLoading = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: const Color(CommonColors.info),
        disabledForegroundColor: const Color(CommonColors.error),
      ),
      onPressed: isLoading
          ? null
          : () async {
              try {
                setState(() => isLoading = true);
                await Future(() => widget.onPressed?.call());
              } finally {
                setState(() => isLoading = false);
              }
            },
      child: isLoading
          ? const CircularProgressIndicator.adaptive()
          : AutoSizeText(widget.text),
    );
  }
}
