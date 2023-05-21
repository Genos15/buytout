import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class ImageFragment extends StatelessWidget {
  final String imageUrl;
  final BoxFit fit;
  final Widget? placeholder;
  final Widget? error;

  const ImageFragment({
    Key? key,
    required this.imageUrl,
    this.fit = BoxFit.cover,
    this.placeholder,
    this.error,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // CarbonIcons.accessibility
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
        ),
      ),
      placeholder: (context, url) => switch (placeholder) {
        (Widget? w) when w != null => w,
        _ => Container(color: CommonColors.red10.asColor),
      },
      errorWidget: (context, url, error) => switch (placeholder) {
        (Widget? w) when w != null => w,
        _ => Container(
            color: CommonColors.red10.asColor,
            child: Center(
              child: Icon(
                CarbonIcons.in_progress_error,
                color: CommonColors.red300.asColor,
                size: LayoutDimens.s32,
              ),
            ),
          ),
      },
    );
  }
}
