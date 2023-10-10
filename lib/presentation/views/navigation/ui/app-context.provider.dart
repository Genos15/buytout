import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class AppContextProvider extends InheritedWidget {
  final AuthState authState;
  final OrderStatement statement;

  const AppContextProvider({
    super.key,
    required Widget child,
    required this.authState,
    required this.statement,
  }) : super(child: child);

  @override
  bool updateShouldNotify(AppContextProvider oldWidget) =>
      authState.toJson() != oldWidget.authState.toJson() ||
      statement.toJson() != oldWidget.statement.toJson();

  static AppContextProvider _of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppContextProvider>()!;
  }

  static AuthState authStateOf(BuildContext context) {
    return _of(context).authState;
  }

  static OrderStatement orderStatementOf(BuildContext context) {
    return _of(context).statement;
  }
}
