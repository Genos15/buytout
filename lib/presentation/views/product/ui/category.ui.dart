import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class CategoryUI extends ConsumerWidget {
  final Category productCategory;

  const CategoryUI({Key? key, required this.productCategory}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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

    return RefreshableScaffold(
      header: Header(
        bottomNavState: BottomNavState.category,
        centerTitle: true,
        padding: const EdgeInsets.symmetric(vertical: LayoutDimens.p16),
        title: AutoSizeText(
          productCategory.categoryNameEn.toUpperCase(),
          style: AppTextStyles.normalBoldOf(context),
        ),
      ),
      slivers: vmState.when(
        data: (categoryUiState) => [
          SliverPadding(
            padding: const EdgeInsets.all(LayoutDimens.p16),
            sliver: SliverToBoxAdapter(
              child: AutoSizeText(
                "${categoryUiState.totalProductCount} articles trouvés",
                style: AppTextStyles.smallOf(context),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          _CategoryUIData(categoryUiState: categoryUiState),
        ],
        error: (error, stack) => [_CategoryUIEmpty()],
        loading: () => [_CategoryUILoading()],
      ),
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
  final CategoryUiState categoryUiState;

  const _CategoryUIData({required this.categoryUiState});

  @override
  Widget build(BuildContext context) {
    if (categoryUiState.products.isEmpty) {
      return _CategoryUIEmpty();
    }

    final products = categoryUiState.products;

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: LayoutDimens.p16),
      sliver: SliverGrid.builder(
        itemCount: products.length,
        addSemanticIndexes: false,
        addRepaintBoundaries: false,
        addAutomaticKeepAlives: false,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: LayoutDimens.ar1_14,
          crossAxisCount: 2,
          crossAxisSpacing: LayoutDimens.s8,
        ),
        itemBuilder: (context, index) {
          final product = products.elementAt(index);
          return ProductCard(product: product);
        },
      ),
    );
  }
}
