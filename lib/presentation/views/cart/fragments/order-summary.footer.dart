import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/dom.dart' as dom;

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
              getSpaceBetween(),
              TableRow(
                children: [
                  const AutoSizeText('Frais de service'),
                  AutoSizeText(
                    statement.serviceFee.toString(),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              getSpaceBetween(),
              TableRow(
                children: [
                  const AutoSizeText('Frais de livraison'),
                  AutoSizeText(
                    statement.deliveryFee.toString(),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              getSpaceBetween(),
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
          const Padding(
            padding: EdgeInsets.symmetric(vertical: LayoutDimens.p24),
            child: SubmitButton(text: 'Commander'),
          ),
          Html(
            shrinkWrap: true,
            data: _htmlContent,
            onLinkTap: (
              String? url,
              Map<String, String> attributes,
              dom.Element? element,
            ) {},
            style: {
              "body": Style(
                margin: Margins.all(0),
                fontSize: FontSize.small,
                padding: HtmlPaddings.zero,
              ),
            },
          )
        ],
      ),
    );
  }

  TableRow getSpaceBetween() => const TableRow(
        children: <Widget>[
          SizedBox(height: LayoutDimens.s12),
          SizedBox(height: LayoutDimens.s12),
        ],
      );
}
