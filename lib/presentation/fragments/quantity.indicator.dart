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
    return ClipRRect(
      borderRadius: BorderRadius.circular(iconSize),
      child: Container(
        color: const Color(CommonColors.gray50),
        constraints: BoxConstraints(
          maxWidth: double.infinity,
          maxHeight: iconSize,
          minHeight: iconSize,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 1,
              child: IconButton.outlined(
                padding: EdgeInsets.zero,
                onPressed: onDecrement,
                icon: Icon(CarbonIcons.subtract, size: iconSize),
              ),
            ),
            Flexible(
              flex: 1,
              child: AutoSizeText(quantity.toString(), maxLines: 1),
            ),
            Flexible(
              flex: 1,
              child: IconButton.filledTonal(
                padding: EdgeInsets.zero,
                onPressed: onIncrement,
                icon: Icon(CarbonIcons.add, size: iconSize),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
