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
            try {
              state.extra as Product;
            } on Exception {
              throw Exception('the product argument must be set');
            }
            final product = state.extra as Product;
            return ProductUI(product: product);
          },
        ),
        GoRoute(
          path: 'category',
          builder: (context, state) {
            try {
              state.extra as Category;
            } on Exception {
              throw Exception('the category argument must be set');
            }

            final productCategory = state.extra as Category;
            return CategoryUI(productCategory: productCategory);
          },
        ),
      ],
    ),
  ],
);
