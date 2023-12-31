import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

extension TextWidgetExtension on Widget {
  static WidgetSpan get shortTextSkeleton {
    return WidgetSpan(
      child: SizedBox(
        height: LayoutDimens.s16,
        width: LayoutDimens.s64,
        child: Container(color: const Color(CommonColors.red10)),
      ),
    );
  }

  static WidgetSpan get longTextSkeleton {
    return WidgetSpan(
      child: SizedBox(
        height: LayoutDimens.s16,
        width: LayoutDimens.s128,
        child: Container(color: const Color(CommonColors.red10)),
      ),
    );
  }

  Widget get black {
    if (this is! Text) {
      return this;
    }

    final textWidget = this as Text;

    if (textWidget.data == null) {
      return this;
    }

    TextStyle blackStyle;
    if (textWidget.style == null) {
      blackStyle = const TextStyle(color: Color(CommonColors.black900));
    } else {
      blackStyle = textWidget.style!.copyWith(
        color: const Color(CommonColors.black900),
      );
    }

    return Text(textWidget.data!, style: blackStyle);
  }

  Widget get title1 {
    if (this is! AutoSizeText && this is! Text) {
      return this;
    }

    if (this is AutoSizeText) {
      final textWidget = this as AutoSizeText;
      final content = textWidget.data;

      if (content == null) {
        return this;
      }

      return AutoSizeText(
        content,
        style: textWidget.style,
        textScaleFactor: TextDimens.xl2,
      );
    } else {
      final textWidget = this as Text;
      final content = textWidget.data;

      if (content == null) {
        return this;
      }

      return Text(
        content,
        style: textWidget.style,
        textScaleFactor: TextDimens.xl2,
      );
    }
  }

  Widget get title2 {
    if (this is! AutoSizeText && this is! Text) {
      return this;
    }

    if (this is AutoSizeText) {
      final textWidget = this as AutoSizeText;
      final content = textWidget.data;

      if (content == null) {
        return this;
      }

      return AutoSizeText(
        content,
        style: textWidget.style,
        textScaleFactor: TextDimens.xl,
      );
    } else {
      final textWidget = this as Text;
      final content = textWidget.data;

      if (content == null) {
        return this;
      }

      return Text(
        content,
        style: textWidget.style,
        textScaleFactor: TextDimens.xl,
      );
    }
  }

  Widget get title3 {
    if (this is! AutoSizeText && this is! Text) {
      return this;
    }

    if (this is AutoSizeText) {
      final textWidget = this as AutoSizeText;
      final content = textWidget.data;

      if (content == null) {
        return this;
      }

      return AutoSizeText(
        content,
        style: textWidget.style,
        textScaleFactor: TextDimens.lg,
      );
    } else {
      final textWidget = this as Text;
      final content = textWidget.data;

      if (content == null) {
        return this;
      }

      return Text(
        content,
        style: textWidget.style,
        textScaleFactor: TextDimens.lg,
      );
    }
  }
}
