import 'package:buytout/config/index.dart';
import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  static const kCategories = [
    Category(
        categoryId: '91e34b04-72ca-4eee-84da-b896ddee6901',
        categoryNameEn: 'boutique été'),
    Category(
        categoryId: '89b24ae4-975b-480b-b54a-fdc2c5165cb1',
        categoryNameEn: 'tout nouveau'),
    Category(
        categoryId: '34c63cc8-80fa-4abd-97a0-4d3bfebd3cfb',
        categoryNameEn: 'maillots dès 1500 FCFA'),
    Category(
        categoryId: '1cd50b65-7e62-475d-a0b8-6efdf249f350',
        categoryNameEn: 'nouveautés douala'),
    Category(
        categoryId: '98f6a669-ec67-43a7-8ba1-7e8b2f842b7d',
        categoryNameEn: 'tendance kribi'),
  ];

  @override
  Widget build(BuildContext context) {
    return RefreshableScaffold(
      header: Header(
        bottomNavState: BottomNavState.home,
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
                  categoryId: '7ea68a25-65bb-4109-bdee-9f41b597585d',
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
                categoryId: '1afbc7e0-bda2-4fa3-b592-9e7e8e06bdab',
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
