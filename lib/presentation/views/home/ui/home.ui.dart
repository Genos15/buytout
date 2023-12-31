import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class HomeUi extends ConsumerWidget {
  const HomeUi({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeUiVmState = ref.watch(homeUiVmProvider);

    final dataReady = homeUiVmState.hasValue;

    return RefreshableScaffold(
      background: CommonColors.white,
      header: Header(
        bottomNavState: BottomNavState.home,
        title: TextTitle1(
          'Showcase',
          textAlign: TextAlign.start,
          style: AppTextStyles.specialLargeBoldOf(context),
        ),
      ),
      slivers: [
        if (dataReady)
          SliverList.builder(
            itemCount: homeUiVmState.requireValue.specialCategories.length,
            itemBuilder: (context, index) {
              final categories = homeUiVmState.requireValue.specialCategories;
              final category = categories.elementAt(index);

              var insets = const EdgeInsets.only(
                left: LayoutDimens.p16,
                right: LayoutDimens.p16,
                bottom: LayoutDimens.p16,
              );

              if (category.fullWidth) {
                insets = const EdgeInsets.only(bottom: LayoutDimens.p16);
              }

              return Padding(
                padding: insets,
                child: HtmlCategoryCard(
                  category: category,
                  onPressed: () => context.go(
                    '/category',
                    extra: category,
                  ),
                ),
              );
            },
          ),
        if (dataReady)
          SliverPadding(
            padding: const EdgeInsets.all(LayoutDimens.p16),
            sliver: SliverGrid.builder(
              itemCount: homeUiVmState.requireValue.categories.length,
              addSemanticIndexes: false,
              addRepaintBoundaries: false,
              addAutomaticKeepAlives: false,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: LayoutDimens.ar1_14,
                crossAxisCount: 2,
                crossAxisSpacing: LayoutDimens.s16,
                mainAxisSpacing: LayoutDimens.s16,
              ),
              itemBuilder: (context, index) {
                final category = homeUiVmState.requireValue.categories[index];
                return CustomCard.content(
                  categoryName: category.categoryNameEn.toUpperCase(),
                  categoryDescription: 'description',
                  imageUrl: category.imageUrl,
                  onPressed: () => context.go(
                    '/category',
                    extra: category,
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}
