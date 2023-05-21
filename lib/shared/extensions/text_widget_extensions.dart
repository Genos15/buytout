import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

extension TextWidgetExtension on Widget {
  static WidgetSpan get shortTextSkeleton {
    return WidgetSpan(
      child: SizedBox(
        height: LayoutDimens.s16,
        width: LayoutDimens.s64,
        child: Container(color: CommonColors.red10.asColor),
      ),
    );
  }

  static WidgetSpan get longTextSkeleton {
    return WidgetSpan(
      child: SizedBox(
        height: LayoutDimens.s16,
        width: LayoutDimens.s128,
        child: Container(color: CommonColors.red10.asColor),
      ),
    );
  }
}
