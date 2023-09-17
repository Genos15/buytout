import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

import 'ads.card.dart';

class OutfitAdsTmp extends StatelessWidget {
  final VoidCallback? onPressed;


  const OutfitAdsTmp({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AdsCard(
      onPressed: onPressed,
      padding: const EdgeInsets.symmetric(
        horizontal: LayoutDimens.p16,
        vertical: LayoutDimens.p8,
      ),
      backgroundColor: CommonColors.teal100.toColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AutoSizeText(
            "😍 😎 € % ✅",
            style: AppTextStyles.specialLargeOf(context),
          ),
          AutoSizeText.rich(
            textAlign: TextAlign.center,
            TextSpan(
              children: <InlineSpan>[
                TextSpan(
                  text: "Jusqu'à -30% en + sur\nl'outlet !",
                  style: AppTextStyles.specialLargeItalicBoldOf(context),
                ),
                const TextSpan(
                  text: "\n\nDévoile ta reduction lors du paiement\n\n",
                ),
                const TextSpan(
                  text: "Code : CHEERLEADING\n\n",
                ),
                TextSpan(
                  text:
                      "Valable sur les articles de l'Outlet uniquement. Voir les conditions générales sur le site. Certains produits sélectionnés sont exclus de la promo.",
                  style: AppTextStyles.smallOf(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
