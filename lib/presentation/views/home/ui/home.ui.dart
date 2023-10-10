import 'package:buytout/config/index.dart';
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
          SliverPadding(
            padding: const EdgeInsets.all(LayoutDimens.p16),
            sliver: SliverToBoxAdapter(
              child: OutfitAdsTmp(
                onPressed: () => context.go(
                  '/category',
                  extra: homeUiVmState.requireValue.primary,
                ),
              ),
            ),
          ),
        if (dataReady)
          SliverToBoxAdapter(
            child: CustomCard.image(
              categoryName: homeUiVmState.requireValue.secondary.categoryNameEn,
              imageUrl: homeUiVmState.requireValue.secondary.imageUrl,
              onPressed: () => context.go(
                '/category',
                extra: homeUiVmState.requireValue.secondary,
              ),
            ),
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
                final productCategory =
                    homeUiVmState.requireValue.categories[index];
                return CustomCard.content(
                  categoryName: productCategory.categoryNameEn.toUpperCase(),
                  categoryDescription: 'description',
                  imageUrl: Environment.imageLink,
                  onPressed: () => context.go(
                    '/category',
                    extra: productCategory,
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}
