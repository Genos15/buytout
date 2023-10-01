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

  void notifyEmitter(BuildContext context, bool result) {
    // Navigator.of(context, rootNavigator: false).pop(result);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(loginUiVmProvider);

    final loginUiVm = ref.read(loginUiVmProvider.notifier);

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
        const SliverPadding(
          padding: EdgeInsets.all(LayoutDimens.p16),
          sliver: SliverToBoxAdapter(
            child: AutoSizeText('Here we add the form to send email to user'),
          ),
        ),
        if (loginUiVm.displayEmailForm)
          SliverPadding(
            padding: const EdgeInsets.all(LayoutDimens.p16),
            sliver: SliverToBoxAdapter(
              child: EmailForm(
                onSubmit: (emailValue) async {
                  await loginUiVm.consumeEmail(
                    email: emailValue,
                    onError: (error, stacktrace) {
                      Exceptions.propagate(context, error, stacktrace);
                    },
                  );
                },
              ),
            ),
          ),
        if (loginUiVm.displayCodeForm)
          SliverPadding(
            padding: const EdgeInsets.all(LayoutDimens.p16),
            sliver: SliverToBoxAdapter(
              child: CodeForm(
                onSubmit: (codeAsString) async {
                  await loginUiVm.consumeValidationCode(
                    code: codeAsString,
                    onError: (error, stacktrace) {
                      Exceptions.propagate(context, error, stacktrace);
                    },
                    onSuccess: () {
                      notifyEmitter(context, true);
                    },
                  );
                },
              ),
            ),
          ),
      ],
    );
  }
}
