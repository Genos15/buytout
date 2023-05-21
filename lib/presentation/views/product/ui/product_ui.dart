import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

const _fakeProductPreview = ProductPreview(
  id: 'id-product',
  name: 'Thintwice product name',
  categoryPreview: ProductCategoryPreview(
    id: 'id-category',
    name: 'Fake Category\'s name',
  ),
  displayPrice: 900,
  displayPriceAsString: '900 FCFA',
  price: 1000,
  priceAsString: '1000 FCFA',
  currency: 'XOF',
  imageUrl:
      'https://shoeslikepottery.com/en/pls-en/wp-content/uploads/2021/06/low-w-2-1200x796.jpg',
  percentage: 10,
  isFavorite: false,
);

class ProductView extends StatelessWidget {
  final ProductPreview productPreview;

  const ProductView({Key? key, this.productPreview = _fakeProductPreview})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          HeaderFragment.product(
            title: const Text('Details Product'),
            background: AspectRatio(
              aspectRatio: LayoutDimens.ar1_1,
              child: ImageFragment(imageUrl: productPreview.imageUrl),
            ),
          ),
          ProductNameFragment(productPreview: productPreview).sliverBox.sp12,
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    color: index % 2 == 0 ? Colors.green : Colors.greenAccent,
                    height: 40,
                    alignment: Alignment.center,
                    child: Text(
                      "Item $index",
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                );
              },
              // 40 list items
              childCount: 15,
            ),
          ),
        ],
      ),
    );
  }
}
