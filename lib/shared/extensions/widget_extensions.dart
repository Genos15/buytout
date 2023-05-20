import 'package:flutter/widgets.dart';

extension WidgetExtension on Widget {
  Widget get sliverBox {
    return SliverToBoxAdapter(child: this);
  }

  Widget withPaddingOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        left: left,
        top: top,
        right: right,
        bottom: bottom,
      ),
      child: this,
    );
  }

  Widget withSliverPaddingOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) {
    return SliverPadding(
      padding: EdgeInsets.only(
        left: left,
        top: top,
        right: right,
        bottom: bottom,
      ),
      sliver: sliverBox,
    );
  }

  Widget withPadding(EdgeInsets insets) {
    return Padding(padding: insets, child: this);
  }

  Widget withSliverPadding(EdgeInsets insets) {
    return SliverPadding(padding: insets, sliver: sliverBox);
  }
}
