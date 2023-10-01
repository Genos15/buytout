import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class AppContextProvider extends InheritedWidget {
  final AuthState authState;

  const AppContextProvider({
    super.key,
    required Widget child,
    required this.authState,
  }) : super(child: child);

  @override
  bool updateShouldNotify(AppContextProvider oldWidget) =>
      authState.toJson() != oldWidget.authState.toJson();

  static AppContextProvider _of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppContextProvider>()!;
  }

  static AuthState authStateOf(BuildContext context) {
    return _of(context).authState;
  }
}
