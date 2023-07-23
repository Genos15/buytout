import 'package:buytout/shared/index.dart';
import 'package:flutter/cupertino.dart';

class ProductCartQuantityIndicatorFragment extends StatelessWidget {
  final int availableQuantity;
  final double iconSize;
  final Color iconColor;
  final void Function() onIncrement;
  final void Function() onDecrement;
  final int quantity;

  const ProductCartQuantityIndicatorFragment({
    Key? key,
    required this.availableQuantity,
    required this.iconSize,
    required this.iconColor,
    required this.onIncrement,
    required this.onDecrement,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: CommonColors.gray100.color,
        borderRadius: BorderRadius.circular(iconSize),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: onDecrement,
            child: Icon(
              CarbonIcons.subtract_alt,
              size: iconSize,
              color: iconColor,
            ),
          ),
          Text('$quantity'),
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: onIncrement,
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
