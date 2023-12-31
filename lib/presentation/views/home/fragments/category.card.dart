import 'package:buytout/config/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class HtmlCategoryCard extends StatelessWidget {
  final Category category;
  final VoidCallback? onPressed;

  const HtmlCategoryCard({
    super.key,
    required this.category,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final bgColor = Color(category.bgColor.hex());

    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        children: [
          if (category.imageUrl != Environment.imageLink)
            AspectRatio(
              aspectRatio: LayoutDimens.ar1_1,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: category.imageUrl,
                  ),
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
                          category.categoryNameEn,
                          style: AppTextStyles.specialLargeBoldOf(context),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          if (category.html != null)
            Html(
              data: category.html,
              style: {
                "body": Style(
                    margin: Margins.zero,
                    fontSize: FontSize.small,
                    padding: HtmlPaddings.zero,
                    textAlign: TextAlign.center,
                    backgroundColor: bgColor,
                    alignment: Alignment.bottomCenter),
              },
            )
        ],
      ),
    );
  }
}
