import 'package:buytout/shared/index.dart';
import 'package:flutter/widgets.dart';

extension WidgetExtension on Widget {
  Widget get sliverBox {
    return SliverToBoxAdapter(child: this);
  }

  Widget pOnly({
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

  Widget spOnly({
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

  // Normal Widgets
  Widget get p0 =>
      Padding(padding: const EdgeInsets.all(LayoutDimens.p0), child: this);

  Widget get p1 =>
      Padding(padding: const EdgeInsets.all(LayoutDimens.p1), child: this);

  Widget get p2 =>
      Padding(padding: const EdgeInsets.all(LayoutDimens.p2), child: this);

  Widget get p4 =>
      Padding(padding: const EdgeInsets.all(LayoutDimens.p4), child: this);

  Widget get p8 =>
      Padding(padding: const EdgeInsets.all(LayoutDimens.p8), child: this);

  Widget get p12 =>
      Padding(padding: const EdgeInsets.all(LayoutDimens.p12), child: this);

  Widget get p16 =>
      Padding(padding: const EdgeInsets.all(LayoutDimens.p16), child: this);

  Widget get p20 =>
      Padding(padding: const EdgeInsets.all(LayoutDimens.p20), child: this);

  Widget get p24 =>
      Padding(padding: const EdgeInsets.all(LayoutDimens.p24), child: this);

  Widget get p32 =>
      Padding(padding: const EdgeInsets.all(LayoutDimens.p32), child: this);

  Widget get p48 =>
      Padding(padding: const EdgeInsets.all(LayoutDimens.p48), child: this);

  Widget get p64 =>
      Padding(padding: const EdgeInsets.all(LayoutDimens.p64), child: this);

  // Sliver Widgets
  Widget get sp0 => SliverPadding(
      padding: const EdgeInsets.all(LayoutDimens.p0), sliver: this);

  Widget get sp1 => SliverPadding(
      padding: const EdgeInsets.all(LayoutDimens.p1), sliver: this);

  Widget get sp2 => SliverPadding(
      padding: const EdgeInsets.all(LayoutDimens.p2), sliver: this);

  Widget get sp4 => SliverPadding(
      padding: const EdgeInsets.all(LayoutDimens.p4), sliver: this);

  Widget get sp8 => SliverPadding(
      padding: const EdgeInsets.all(LayoutDimens.p8), sliver: this);

  Widget get sp12 => SliverPadding(
      padding: const EdgeInsets.all(LayoutDimens.p12), sliver: this);

  Widget get sp16 => SliverPadding(
      padding: const EdgeInsets.all(LayoutDimens.p16), sliver: this);

  Widget get sp20 => SliverPadding(
      padding: const EdgeInsets.all(LayoutDimens.p20), sliver: this);

  Widget get sp24 => SliverPadding(
      padding: const EdgeInsets.all(LayoutDimens.p24), sliver: this);

  Widget get sp32 => SliverPadding(
      padding: const EdgeInsets.all(LayoutDimens.p32), sliver: this);

  Widget get sp48 => SliverPadding(
      padding: const EdgeInsets.all(LayoutDimens.p48), sliver: this);

  Widget get sp64 => SliverPadding(
      padding: const EdgeInsets.all(LayoutDimens.p64), sliver: this);

  Widget p(double insets) {
    return Padding(padding: EdgeInsets.all(insets), child: this);
  }

  Widget sp(double insets) {
    return SliverPadding(padding: EdgeInsets.all(insets), sliver: this);
  }
}
