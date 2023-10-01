import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/cupertino.dart';

class SignUi extends ConsumerWidget {
  final AuthState authState;
  final Widget fallback;
  final String title;

  const SignUi({
    super.key,
    required this.authState,
    required this.fallback,
    required this.title,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
      slivers: const [
        SliverFillRemaining(
          child: Center(
            child: AutoSizeText('Connectez vous'),
          ),
        )
      ],
    );
  }
}
