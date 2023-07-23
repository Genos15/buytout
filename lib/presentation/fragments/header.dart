import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

enum _HeaderState { home, product, cart, favorite, account }

class Header extends StatelessWidget {
  final Widget title;
  final Widget background;
  final _HeaderState _state;

  const Header.home({Key? key, required this.title})
      : _state = _HeaderState.home,
        background = const SizedBox.shrink(),
        super(key: key);

  const Header.favorite({Key? key, required this.title})
      : _state = _HeaderState.favorite,
        background = const SizedBox.shrink(),
        super(key: key);

  const Header.account({Key? key, required this.title})
      : _state = _HeaderState.account,
        background = const SizedBox.shrink(),
        super(key: key);

  const Header.product(
      {Key? key, required this.title, required this.background})
      : _state = _HeaderState.product,
        super(key: key);

  const Header.cart({Key? key, required this.title})
      : _state = _HeaderState.cart,
        background = const SizedBox.shrink(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.width;
    final minHeight = Theme.of(context).appBarTheme.toolbarHeight;

    return SliverAppBar(
      pinned: true,
      floating: false,
      collapsedHeight: minHeight,
      expandedHeight: switch (_state) {
        _HeaderState.home => minHeight,
        _HeaderState.product => maxHeight,
        _HeaderState.cart => minHeight,
        _HeaderState.favorite => minHeight,
        _HeaderState.account => minHeight,
      },
      // backgroundColor: const Color(CommonColors.red10),
      backgroundColor: CommonColors.white.color,
      flexibleSpace: LayoutBuilder(builder: (context, constraints) {
        final visible = constraints.biggest.aspectRatio > LayoutDimens.ar2_1;
        return FlexibleSpaceBar(
          centerTitle: true,
          title: visible ? title : null,
          collapseMode: CollapseMode.parallax,
          expandedTitleScale: TextDimens.lg,
          background: background,
        );
      }),
    );
  }
}
