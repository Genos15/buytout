import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class ImageViewer extends StatelessWidget {
  final String imageUrl;
  final BoxFit fit;
  final Widget? placeholder;
  final Widget? error;

  const ImageViewer({
    Key? key,
    required this.imageUrl,
    this.fit = BoxFit.cover,
    this.placeholder,
    this.error,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isValidUri = Uri.tryParse(imageUrl)?.hasAbsolutePath ?? false;

    if (!isValidUri) {
      return const _DefaultError();
    }

    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
        ),
      ),
      placeholder: (context, url) => switch (placeholder) {
        (Widget? w) when w != null => w,
        _ => const _DefaultPlaceholder(),
      },
      errorWidget: (context, url, error) => switch (placeholder) {
        (Widget? w) when w != null => w,
        _ => const _DefaultError(),
      },
    );
  }
}

class _DefaultPlaceholder extends StatelessWidget {
  const _DefaultPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: CommonColors.red10.color);
  }
}

class _DefaultError extends StatelessWidget {
  const _DefaultError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CommonColors.red10.color,
      child: Center(
        child: Icon(
          CarbonIcons.in_progress_error,
          color: CommonColors.red300.color,
          size: LayoutDimens.s32,
        ),
      ),
    );
  }
}
