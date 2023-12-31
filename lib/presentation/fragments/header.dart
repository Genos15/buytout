import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final Widget title;
  final Widget background;
  final BottomNavState bottomNavState;
  final EdgeInsets padding;
  final bool centerTitle;
  final void Function()? onCloseLogin;

  const Header({
    Key? key,
    required this.bottomNavState,
    required this.title,
    this.padding = const EdgeInsets.all(LayoutDimens.p8),
    this.centerTitle = false,
    this.onCloseLogin,
    this.background = const SizedBox.shrink(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.sizeOf(context).width;
    final minHeight = Theme.of(context).appBarTheme.toolbarHeight;

    final canNavigateBack = Navigator.canPop(context);

    return SliverAppBar(
      pinned: true,
      floating: false,
      collapsedHeight: minHeight,
      expandedHeight: switch (bottomNavState) {
        BottomNavState.product => maxHeight,
        _ => minHeight,
      },
      backgroundColor: const Color(CommonColors.white),
      flexibleSpace: LayoutBuilder(builder: (context, constraints) {
        final visible = constraints.biggest.aspectRatio > LayoutDimens.ar2_1;
        return FlexibleSpaceBar(
          centerTitle: centerTitle,
          title: visible ? title : null,
          collapseMode: CollapseMode.parallax,
          expandedTitleScale: TextDimens.lg,
          background: background,
          titlePadding: padding,
        );
      }),
      automaticallyImplyLeading: switch (bottomNavState) {
        BottomNavState.product || BottomNavState.category => false,
        _ => true,
      },
      leading: switch (bottomNavState) {
        BottomNavState.product ||
        BottomNavState.category ||
        BottomNavState.defaultUi when canNavigateBack == true =>
          IconButton(
            icon: const Icon(CarbonIcons.arrow_left),
            onPressed: () => Navigator.pop(context),
          ),
        _ => const SizedBox.shrink(),
      },
      actions: switch (bottomNavState) {
        BottomNavState.home => [
            Padding(
              padding: padding,
              child: IconButton.filledTonal(
                icon: const Icon(CarbonIcons.search),
                onPressed: () {
                  showSearch(
                    context: context,
                    delegate: ProductSearchDelegate(),
                  );
                },
              ),
            ),
          ],
        BottomNavState.login => [
            Padding(
              padding: padding,
              child: IconButton(
                icon: const Icon(CarbonIcons.close),
                onPressed: onCloseLogin,
              ),
            ),
          ],
        _ => null
      },
    );
  }
}
