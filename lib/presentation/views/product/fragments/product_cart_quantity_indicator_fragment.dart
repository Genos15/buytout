import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/cupertino.dart';

class ProductCartQuantityIndicatorFragment extends ConsumerWidget {
  final int availableQuantity;
  final double iconSize;
  final Color iconColor;
  final void Function(int) onChange;

  const ProductCartQuantityIndicatorFragment({
    Key? key,
    required this.availableQuantity,
    required this.iconSize,
    required this.iconColor,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewmodel = ref.watch(
        productCartQuantityViewModelProvider(availableQuantity).notifier);
    final quantity =
        ref.watch(productCartQuantityViewModelProvider(availableQuantity));

    return Container(
      height: double.infinity,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: CommonColors.gray100.asColor,
        borderRadius: BorderRadius.circular(iconSize),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              onChange(viewmodel.decrement());
            },
            child: Icon(
              CarbonIcons.subtract_alt,
              size: iconSize,
              color: iconColor,
            ),
          ),
          Text('$quantity'),
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              onChange(viewmodel.increment());
            },
            child: Icon(
              CarbonIcons.add_filled,
              size: iconSize,
              color: iconColor,
            ),
          ),
        ],
      ),
    );
  }
}
