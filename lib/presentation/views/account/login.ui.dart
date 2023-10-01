import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class LoginUi extends ConsumerWidget {
  const LoginUi({super.key});

  void notifyEmitter(BuildContext context, bool result) {
    Navigator.of(context, rootNavigator: false).pop(result);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(loginUiVmProvider);
    final loginUiVm = ref.read(loginUiVmProvider.notifier);

    return RefreshableScaffold(
      header: Header(
        bottomNavState: BottomNavState.login,
        title: const AutoSizeText('Bienvenu'),
        onCloseLogin: () {
          const isUserLogged = false;
          notifyEmitter(context, isUserLogged);
        },
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
