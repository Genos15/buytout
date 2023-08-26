import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class AdsCard extends StatelessWidget {
  final Color? backgroundColor;
  final List<Color>? gradientColors;
  final Widget child;
  final VoidCallback? onPressed;
  final EdgeInsets padding;

  const AdsCard({
    super.key,
    this.backgroundColor,
    this.gradientColors,
    required this.child,
    this.onPressed,
    this.padding = const EdgeInsets.all(LayoutDimens.p8),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          gradient: gradientColors != null
              ? LinearGradient(
                  colors: gradientColors!,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : null,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            child
          ],
        ),
      ),
    );
  }
}
