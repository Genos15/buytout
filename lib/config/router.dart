import 'package:buytout/presentation/index.dart';
import 'package:buytout/presentation/views/cart/ui/order-summary.ui.dart';
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
          path: 'category',
          builder: (context, state) {
            try {
              state.extra as Category;
            } catch (error, stack) {
              Exceptions.monitor(error, stack);
              return const ErrorView();
            }

            final productCategory = state.extra as Category;
            return CategoryUI(productCategory: productCategory);
          },
        ),
        GoRoute(
          path: 'details',
          builder: (context, state) {
            try {
              state.extra as ProdLite;
            } catch (error, stack) {
              Exceptions.monitor(error, stack);
              return const ErrorView();
            }

            final product = state.extra as ProdLite;
            return ProductUI(product: product);
          },
        ),
        GoRoute(
          path: 'order-summary',
          builder: (context, state) {
            assert(state.extra != null, 'need the order statement');
            try {
              state.extra as OrderStatement;
            } catch (error, stack) {
              Exceptions.monitor(error, stack);
              return const ErrorView();
            }

            final statement = state.extra as OrderStatement;
            return OrderSummaryUi(statement: statement);
          },
        ),
      ],
    ),
  ],
);
