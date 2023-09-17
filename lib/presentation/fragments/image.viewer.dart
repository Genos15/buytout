import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class ImageViewer extends StatelessWidget {
  final String url;
  final BoxFit fit;
  final Widget? placeholder;
  final Widget? error;

  const ImageViewer({
    Key? key,
    required this.url,
    this.fit = BoxFit.cover,
    this.placeholder,
    this.error,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isValidUri = Uri.tryParse(url)?.hasAbsolutePath ?? false;

    if (!isValidUri) {
      return const _ImageError();
    }

    return CachedNetworkImage(
      imageUrl: url,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
        ),
      ),
      placeholder: (context, url) => switch (placeholder) {
        (Widget? component) when component != null => component,
        _ => const _ImagePlaceholder(),
      },
      errorWidget: (context, url, error) => switch (placeholder) {
        (Widget? component) when component != null => component,
        _ => const _ImageError(),
      },
    );
  }
}

class _ImagePlaceholder extends StatelessWidget {
  const _ImagePlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: CommonColors.red10.toColor);
  }
}

class _ImageError extends StatelessWidget {
  const _ImageError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CommonColors.red10.toColor,
      child: Center(
        child: Icon(
          CarbonIcons.in_progress_error,
          color: CommonColors.red300.toColor,
          size: LayoutDimens.s32,
        ),
      ),
    );
  }
}
