import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class CategoryUI extends StatelessWidget {
  final Category productCategory;

  const CategoryUI({Key? key, required this.productCategory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshableScaffold(
      header: Header.category(
        padding: const EdgeInsets.symmetric(vertical: LayoutDimens.p16),
        title: AutoSizeText(
          productCategory.categoryNameEn.toUpperCase(),
          style: AppTextStyles.normalBoldOf(context),
        ),
      ),
      slivers: [
        Consumer(builder: (context, ref, _) {
          final categoryUiProvider = categoryUiVmProvider(productCategory);
          final vmState = ref.watch(categoryUiProvider);

          ref.listen(
            categoryUiProvider,
            (_, currentState) => currentState.whenOrNull(
              error: (error, stacktrace) {
                Exceptions.propagate(context, error, stacktrace);
              },
            ),
          );

          return vmState.when(
            data: (data) => _CategoryUIData(data: data),
            error: (error, stack) => _CategoryUIEmpty(),
            loading: () => _CategoryUILoading(),
          );
        }),
      ],
    );
  }
}

class _CategoryUIEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Center(
        child: AutoSizeText(
          "Cette categorie n'a aucun produit",
          style: AppTextStyles.normalOf(context),
        ),
      ),
    );
  }
}

class _CategoryUILoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      child: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}

class _CategoryUIData extends StatelessWidget {
  final CategoryUiState data;

  const _CategoryUIData({required this.data});

  @override
  Widget build(BuildContext context) {
    if (data.products.isEmpty) {
      return _CategoryUIEmpty();
    }

    return SliverToBoxAdapter(
      child: Center(
        child: AutoSizeText(
          "We have some products",
          style: AppTextStyles.normalOf(context),
        ),
      ),
    );
  }
}
