import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

enum _CustomCardType { image, content }

class CustomCard extends StatelessWidget {
  final String imageUrl;
  final String? categoryName;
  final String? categoryDescription;
  final VoidCallback? onPressed;
  final _CustomCardType _cardType;

  // Constructor for Use Case 1: Clickable image
  const CustomCard.image({
    super.key,
    this.categoryName,
    required this.imageUrl,
    this.onPressed,
  })  : _cardType = _CustomCardType.image,
        categoryDescription = null;

  // Constructor for Use Case 2: Image with category name and description
  const CustomCard.content({
    super.key,
    required this.imageUrl,
    required this.categoryName,
    required this.categoryDescription,
    this.onPressed,
  }) : _cardType = _CustomCardType.content;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          AspectRatio(
            aspectRatio: 1 / 1,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: imageUrl,
                ),
                if (_cardType == _CustomCardType.image && categoryName != null)
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: LayoutDimens.p16,
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(LayoutDimens.s4),
                        color: const Color(CommonColors.white),
                        child: AutoSizeText(
                          categoryName!,
                          style: AppTextStyles.specialLargeBoldOf(context),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          if (_cardType == _CustomCardType.content &&
              categoryName != null &&
              categoryDescription != null)
            Padding(
              padding: const EdgeInsets.only(top: LayoutDimens.s4),
              child: AutoSizeText.rich(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                TextSpan(
                  children: [
                    TextSpan(
                      text: '$categoryName\n',
                      style: AppTextStyles.normalBoldOf(context),
                    ),
                    TextSpan(
                      text: '$categoryDescription\n',
                      style: AppTextStyles.smallOf(context),
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
        ],
      ),
    );
  }
}
