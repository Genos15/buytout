import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/cupertino.dart';

class OrderSummaryUi extends StatelessWidget {
  final OrderStatement statement;

  const OrderSummaryUi({super.key, required this.statement});

  @override
  Widget build(BuildContext context) {
    return RefreshableScaffold(
      header: const Header(
        bottomNavState: BottomNavState.defaultUi,
        centerTitle: true,
        title: AutoSizeText(
          'Résumé',
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(CommonColors.black900)),
        ),
      ),
      slivers: [
        SliverToBoxAdapter(child: CartPreview(statement: statement)),
        const Space(),
        SliverToBoxAdapter(child: OrderSummaryFooter(statement: statement)),
        const Space(),
      ],
      overlays: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(LayoutDimens.p12),
            decoration: const BoxDecoration(
              color: Color(CommonColors.white),
              border: Border(
                top: BorderSide(
                  color: Color(CommonColors.gray20_carbon),
                  width: LayoutDimens.s0_5,
                ),
              ),
            ),
            child: TextSubmitButton(
              text: 'Commander',
              onPressed: () {},
            ),
          ),
        )
      ],
    );
  }
}
