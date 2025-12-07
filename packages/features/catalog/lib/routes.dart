import 'package:go_router/go_router.dart';
import 'screens/catalog_screen.dart';
import 'screens/product_screen.dart';

final routes = <RouteBase>[
  GoRoute(path: '/catalog', builder: (context, state) => const CatalogScreen()),
  GoRoute(
    path: '/product/:id',
    builder: (context, state) => ProductScreen(id: state.pathParameters['id']!),
  ),
];
