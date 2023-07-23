import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';

final GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const BuytoutApplicationBody();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (context, state) {
            // todo: check if the argument is ok
            final product = state.extra as Product;
            return ProductUI(product: product);
          },
        ),
      ],
    ),
  ],
);
