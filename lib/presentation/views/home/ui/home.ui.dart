import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  static const kCategories = [
    Category(categoryId: '1', categoryNameEn: 'boutique été'),
    Category(categoryId: '2', categoryNameEn: 'tout nouveau'),
    Category(categoryId: '3', categoryNameEn: 'maillots dès 1500 FCFA'),
    Category(categoryId: '4', categoryNameEn: 'nouveautés douala'),
    Category(categoryId: '5', categoryNameEn: 'tendance kribi'),
  ];

  @override
  Widget build(BuildContext context) {
    return RefreshableScaffold(
      header: Header.home(
        title: TextTitle1(
          'Showcase',
          textAlign: TextAlign.start,
          style: AppTextStyles.specialLargeBoldOf(context),
        ),
      ),
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(LayoutDimens.p16),
          sliver: SliverToBoxAdapter(
            child: OutfitAdsTmp(
              onPressed: () => context.go(
                '/category',
                extra: const Category(
                  categoryId: '6',
                  categoryNameEn: 'Outfit',
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: CustomCard.image(
            categoryName: 'Street wear',
            imageUrl:
                'https://cdn.cliqueinc.com/posts/225010/easy-outfit-ideas-225010-1670580534067-main.700x0c.jpg',
            onPressed: () => context.go(
              '/category',
              extra: const Category(
                categoryId: '7',
                categoryNameEn: 'Street wear',
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(LayoutDimens.p16),
          sliver: SliverGrid.builder(
            itemCount: kCategories.length,
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
              final productCategory = kCategories[index];
              return CustomCard.content(
                categoryName: productCategory.categoryNameEn.toUpperCase(),
                categoryDescription: 'description',
                imageUrl: 'https://placehold.co/600x400.png',
                onPressed: () => context.go(
                  '/category',
                  extra: productCategory,
                ),
              );
            },
          ),
        )
        // const SliverPadding(
        //   padding: EdgeInsets.all(LayoutDimens.p16),
        //   sliver: SliverToBoxAdapter(
        //     child: SectionSeparator(
        //       title: 'Popular',
        //       subtitle: 'Most paid product of the community',
        //     ),
        //   ),
        // ),
        // const ProductListFragment.arrival().sliverBox,
        // const SliverPadding(
        //   padding: EdgeInsets.all(LayoutDimens.p16),
        //   sliver: SliverToBoxAdapter(
        //     child: SectionSeparator(
        //       title: 'Suggested for you',
        //       subtitle: 'Based on area interests',
        //     ),
        //   ),
        // ),
        // const ProductListFragment.best().sp16,
      ],
    );
  }
}
