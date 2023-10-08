import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

const _kErrorMessage =
    "Une erreur s'est produite lors votre tentative de connexion";

class SignUi extends StatelessWidget with CanLoginMixin {
  final AuthState authState;
  final Widget fallback;
  final String title;
  final void Function()? onSuccess;
  final void Function(String message)? onError;

  const SignUi({
    super.key,
    required this.authState,
    required this.fallback,
    required this.title,
    this.onSuccess,
    this.onError,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshableScaffold(
      header: Header(
        bottomNavState: BottomNavState.defaultUi,
        centerTitle: true,
        title: AutoSizeText(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Color(CommonColors.black900)),
        ),
      ),
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(LayoutDimens.p16),
          sliver: SliverToBoxAdapter(
            child: TextSubmitButton(
              onPressed: () async {
                final isLogged = await onSign(context);
                if (isLogged) {
                  onSuccess?.call();
                } else {
                  onError?.call(_kErrorMessage);
                }
              },
              text: 'Je me connecte',
            ),
          ),
        ),
      ],
    );
  }
}
