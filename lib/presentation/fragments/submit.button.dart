import 'package:buytout/shared/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final buttonLoadingStateProvider = StateProvider<bool>((ref) => false);

class SubmitButton extends ConsumerWidget {
  final double height;
  final double width;
  final int color;
  final double minSize;
  final double borderRadius;
  final String text;
  final VoidCallback? onPressed;

  const SubmitButton({
    Key? key,
    this.height = LayoutDimens.s48,
    this.width = double.infinity,
    this.color = CommonColors.teal100,
    this.minSize = LayoutDimens.s32,
    this.borderRadius = LayoutDimens.s32,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(buttonLoadingStateProvider);
    return SizedBox(
      height: height,
      width: width,
      child: CupertinoButton(
        color: color.color,
        onPressed: isLoading
            ? null
            : () async {
                ref.read(buttonLoadingStateProvider.notifier).state = true;
                await Future(() => onPressed?.call());
                ref.read(buttonLoadingStateProvider.notifier).state = false;
              },
        minSize: minSize,
        borderRadius: BorderRadius.circular(borderRadius),
        child: isLoading
            ? const CircularProgressIndicator.adaptive()
            : AutoSizeText(
                text,
                maxLines: 1,
                style: AppTextStyles.normalOf(context),
              ),
      ),
    );
  }
}
