import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

const _htmlContent = r'''
<body>
  <div>
    En confirmant votre commande vous acceptez <a href='https://github.com'>nos conditions de vente</a>, <a href='https://github.com'>notre politique de confidentialité</a> et <a href='https://github.com'>nos modalités concerant les retours</a> et donnez votre autorization pour que Readige conserve certaines de vos donnees dans le but d'ameliorer vos prochaines experiences de shopping.
  </div>
</body>
''';

class OrderSummaryFooter extends StatelessWidget {
  final OrderStatement statement;

  const OrderSummaryFooter({super.key, required this.statement});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(LayoutDimens.p12),
      decoration: const BoxDecoration(
        color: Color(CommonColors.gray10_carbon),
      ),
      child: Column(
        children: [
          Table(
            children: [
              TableRow(
                children: [
                  const AutoSizeText('Sous-total'),
                  AutoSizeText(
                    statement.productTotalAmount.toString(),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              spaceBetween(),
              TableRow(
                children: [
                  const AutoSizeText('Frais de service'),
                  AutoSizeText(
                    statement.serviceFee.toString(),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              spaceBetween(),
              TableRow(
                children: [
                  const AutoSizeText('Frais de livraison'),
                  AutoSizeText(
                    statement.deliveryFee.toString(),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              spaceBetween(),
              TableRow(
                children: [
                  const AutoSizeText('Total'),
                  AutoSizeText(
                    statement.totalAmount.toString(),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
            ],
          ),
          Html(
            shrinkWrap: true,
            data: _htmlContent,
            style: {
              "body": Style(
                margin: Margins.zero,
                fontSize: FontSize.small,
                padding: HtmlPaddings.zero,
              ),
            },
          )
        ],
      ),
    );
  }

  TableRow spaceBetween() => const TableRow(
        children: [
          SizedBox(height: LayoutDimens.s12),
          SizedBox(height: LayoutDimens.s12),
        ],
      );
}
