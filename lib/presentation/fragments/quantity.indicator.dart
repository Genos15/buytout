import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class QuantityIndicator extends StatelessWidget {
  final int availableQuantity;
  final double iconSize;
  final Color iconColor;
  final void Function() onIncrement;
  final void Function() onDecrement;
  final int quantity;

  const QuantityIndicator({
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
          IconButton.outlined(
            padding: EdgeInsets.zero,
            onPressed: onDecrement,
            icon: Icon(
              CarbonIcons.subtract,
              size: iconSize,
            ),
          ),
          AutoSizeText(quantity.toString(), maxLines: 1),
          IconButton.filledTonal(
            padding: EdgeInsets.zero,
            onPressed: onIncrement,
            icon: Icon(
              CarbonIcons.add,
              size: iconSize,
            ),
          ),
        ],
      ),
    );
  }
}
